.class public Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;
.super Ljava/lang/Object;
.source "NSDSDatabaseHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    .line 53
    return-void
.end method

.method private broadcastE911AID(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;I)V
    .locals 3
    .param p1, "responseLocation"    # Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;
    .param p2, "slotid"    # I

    .line 425
    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->addressId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->aidExpiration:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.nsds.action.E911_AID_INFO_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->addressId:Ljava/lang/String;

    const-string v2, "e911_aid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->aidExpiration:Ljava/lang/String;

    const-string v2, "e911_aid_expiration"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const-string v1, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 436
    return-void

    .line 426
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "broadcastE911AID: invalid e911 AID info, vail"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method private doesServiceExists(JJ)Z
    .locals 6
    .param p1, "deviceId"    # J
    .param p3, "lineId"    # J

    .line 799
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildServicesUri(JJ)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 801
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 802
    const/4 v1, 0x0

    .line 805
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 802
    :cond_0
    return v1

    .line 804
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 804
    :cond_2
    return v1

    .line 799
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
.end method

.method public static getConfigVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsi"    # Ljava/lang/String;

    .line 133
    const-string/jumbo v0, "version"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "projection":[Ljava/lang/String;
    const-string v0, "imsi = ?"

    .line 138
    .local v0, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    .line 139
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 141
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 143
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_0
    return-object v2

    .line 139
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2

    .line 145
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 146
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_3
    const-string v1, "0"

    return-object v1
.end method

.method private getLineDetail(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;
    .locals 14
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "deviceUid"    # Ljava/lang/String;

    .line 760
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;-><init>()V

    move-object v1, v0

    .line 761
    .local v1, "lineDetail":Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;
    const-string v2, "_id"

    const-string v3, "msisdn"

    const-string v4, "location_status"

    const-string/jumbo v5, "tc_status"

    const-string v6, "e911_address_id"

    const-string v7, "e911_aid_expiration"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v10

    .line 764
    .local v10, "projection":[Ljava/lang/String;
    move-object v2, p0

    iget-object v8, v2, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static/range {p3 .. p3}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildLinesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v13, 0x0

    move-object v11, p1

    move-object/from16 v12, p2

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 766
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_1

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, v1, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->lineId:J

    .line 768
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->msisdn:Ljava/lang/String;

    .line 769
    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->locationStatus:I

    .line 770
    const/4 v0, 0x3

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->tcStatus:I

    .line 771
    const/4 v0, 0x4

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->e911AddressId:Ljava/lang/String;

    .line 772
    const/4 v0, 0x5

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->e911AidExpiration:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 764
    :catchall_0
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v4

    .line 774
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 775
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-object v1
.end method

.method private getLineIdFromAllLinesIf(Ljava/lang/String;)J
    .locals 12
    .param p1, "msisdn"    # Ljava/lang/String;

    .line 602
    const-string v6, "msisdn = ? AND account_id = 0"

    .line 603
    .local v6, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v4, v7

    .line 604
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    .line 606
    .local v2, "projection":[Ljava/lang/String;
    const-wide/16 v8, -0x1

    .line 607
    .local v8, "lineId":J
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildAllLinesInternalUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 609
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 610
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v8, v10

    goto :goto_1

    .line 607
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    .line 612
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 613
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-wide v8
.end method

.method private insertDevice(JLjava/lang/String;Ljava/lang/String;ZIZ)J
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "deviceUId"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "isPrimary"    # Z
    .param p6, "deviceType"    # I
    .param p7, "isLocal"    # Z

    .line 628
    const-wide/16 v0, -0x1

    .line 629
    .local v0, "deviceRowId":J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 630
    .local v2, "values":Landroid/content/ContentValues;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "device_account_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 631
    const-string v3, "device_uid"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v3, "device_name"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "is_primary"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 634
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "device_type"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 635
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "is_local"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 636
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Devices;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 637
    .local v3, "deviceUri":Landroid/net/Uri;
    sget-object v4, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inserted deviceUri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    if-eqz v3, :cond_0

    .line 639
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 641
    :cond_0
    return-wide v0
.end method

.method private insertDeviceIfNotExists(JLjava/lang/String;ZZ)J
    .locals 13
    .param p1, "accountId"    # J
    .param p3, "deviceUId"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z
    .param p5, "isLocal"    # Z

    .line 582
    move-object v8, p0

    move-object/from16 v9, p3

    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getDeviceId(Ljava/lang/String;)I

    move-result v0

    int-to-long v10, v0

    .line 583
    .local v10, "deviceRowId":J
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-nez v0, :cond_1

    .line 584
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device does not exist with :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " creating one"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v0, v8, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/DeviceNameHelper;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "deviceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    move-object/from16 v0, p3

    move-object v12, v0

    goto :goto_0

    .line 586
    :cond_0
    move-object v12, v0

    .line 590
    .end local v0    # "deviceName":Ljava/lang/String;
    .local v12, "deviceName":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-object v4, v12

    move/from16 v5, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->insertDevice(JLjava/lang/String;Ljava/lang/String;ZIZ)J

    move-result-wide v10

    .line 593
    .end local v12    # "deviceName":Ljava/lang/String;
    :cond_1
    return-wide v10
.end method

.method private insertGcmPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "senderId"    # Ljava/lang/String;
    .param p3, "protocolToServer"    # Ljava/lang/String;
    .param p4, "deviceUid"    # Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "insertGcmPushToken()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "gcm_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v1, "sender_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v1, "protocol_to_server"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "device_uid"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$GcmTokens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 79
    .local v1, "gcmTokenUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 80
    sget-object v2, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "inserted GCM token successfully"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method private insertLineWithServiceDetail(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)J
    .locals 17
    .param p1, "accountId"    # J
    .param p3, "deviceId"    # J
    .param p5, "msisdn"    # Ljava/lang/String;
    .param p6, "fiendlyName"    # Ljava/lang/String;
    .param p7, "isOwner"    # Ljava/lang/Boolean;
    .param p8, "serviceName"    # Ljava/lang/String;
    .param p9, "serviceFingerprint"    # Ljava/lang/String;

    .line 483
    move-object/from16 v9, p5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v10, v0

    .line 484
    .local v10, "values":Landroid/content/ContentValues;
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "account_id"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 485
    const-string v0, "msisdn"

    invoke-virtual {v10, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v0, "friendly_name"

    move-object/from16 v11, p6

    invoke-virtual {v10, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v0, "is_owner"

    move-object/from16 v12, p7

    invoke-virtual {v10, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 488
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    move-object/from16 v13, p0

    iget-object v0, v13, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 490
    .local v14, "lineUri":Landroid/net/Uri;
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inserted lineUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-wide/16 v0, -0x1

    .line 492
    .local v0, "lineId":J
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 493
    invoke-virtual {v14}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 494
    .end local v0    # "lineId":J
    .local v15, "lineId":J
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide v1, v15

    move-wide/from16 v3, p3

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->insertServiceNameAndFingerPrint(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 496
    .local v0, "serviceUri":Landroid/net/Uri;
    sget-object v1, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertLineWithServiceDetail: inserted line service Uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .end local v0    # "serviceUri":Landroid/net/Uri;
    move-wide v0, v15

    goto :goto_0

    .line 498
    .end local v15    # "lineId":J
    .local v0, "lineId":J
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLineWithServiceDetail: failed for msisdn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :goto_0
    return-wide v0
.end method

.method private insertServiceNameAndFingerPrint(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p1, "lineId"    # J
    .param p3, "deviceId"    # J
    .param p5, "serviceName"    # Ljava/lang/String;
    .param p6, "serviceFingerprint"    # Ljava/lang/String;
    .param p7, "serviceInstanceId"    # Ljava/lang/String;
    .param p8, "serviceMsisdn"    # Ljava/lang/String;

    .line 521
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 522
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "service_name"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string/jumbo v1, "service_msisdn"

    invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string/jumbo v1, "service_fingerprint"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string/jumbo v1, "service_instance_id"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p3, p4, p1, p2}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildServicesUri(JJ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static migrationToCe(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Ljava/lang/String;

    .line 936
    invoke-virtual {p0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 937
    .local v0, "ceContext":Landroid/content/Context;
    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 938
    sget-object v1, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to maigrate DB."

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    return v2

    .line 941
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 942
    sget-object v1, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed delete DB on DE."

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    return v2

    .line 945
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "migration is done"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    const/4 v1, 0x1

    return v1
.end method

.method private updateGcmPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "senderId"    # Ljava/lang/String;
    .param p3, "deviceUid"    # Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateGcmPushToken()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 88
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "gcm_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v1, "sender_id = ? AND device_uid = ?"

    .line 91
    .local v1, "updateSelection":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    .line 92
    .local v2, "updateSelectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$GcmTokens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 94
    .local v3, "noUpdates":I
    if-lez v3, :cond_0

    .line 95
    sget-object v4, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update GCM token for sender ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for deviceId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public copyConfigEntriesForSimSwap(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "prevImsi"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .line 245
    const-string v0, "device_state"

    const-string v1, "device_id"

    const-string v2, "imsi_eap"

    const-string v3, "access_token"

    const-string/jumbo v4, "push_token"

    const-string v5, "imsi"

    :try_start_0
    sget-object v6, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Copying config entries for sim swap"

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v6, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "NATIVE_MSISDN"

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v7, "aka_token"

    iget-object v8, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v8, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getAkaToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v7, p1, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "prev_imsi"

    invoke-static {v3, p3, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getPrefForSlot(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, p3, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getPrefForSlot(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, p3, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getPrefForSlot(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 259
    .local v0, "contentValuesArr":[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 260
    .local v1, "ind":I
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 261
    .local v3, "key":Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v0, v1

    .line 262
    aget-object v4, v0, v1

    const-string/jumbo v7, "pname"

    invoke-virtual {v4, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    aget-object v4, v0, v1

    const-string/jumbo v7, "pvalue"

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    aget-object v4, v0, v1

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    nop

    .end local v3    # "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 266
    goto :goto_0

    .line 268
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$SimSwapNsdsConfigs;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 269
    .local v2, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v2, v5, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 270
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v3

    .line 271
    .local v3, "noRows":I
    sget-object v4, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "copied shared pref and nsds config entries for sim swap:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    .end local v0    # "contentValuesArr":[Landroid/content/ContentValues;
    .end local v1    # "ind":I
    .end local v2    # "builder":Landroid/net/Uri$Builder;
    .end local v3    # "noRows":I
    .end local v6    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->deleteConfigAndResetDeviceAndAccountStatus(Ljava/lang/String;Ljava/lang/String;I)V

    .line 274
    nop

    .line 275
    return-void

    .line 273
    :catchall_0
    move-exception v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->deleteConfigAndResetDeviceAndAccountStatus(Ljava/lang/String;Ljava/lang/String;I)V

    .line 274
    throw v0
.end method

.method public deleteConfigAndResetDeviceAndAccountStatus(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .line 278
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteConfigAndResetDeviceAndAccountStatus: imsi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->resetAccountStatus(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->resetDeviceStatus(Ljava/lang/String;Ljava/lang/String;I)V

    .line 283
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->deleteNsdsConfigs(Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->clear()V

    .line 285
    return-void
.end method

.method public deleteNsdsConfigs(Ljava/lang/String;)V
    .locals 5
    .param p1, "imsi"    # Ljava/lang/String;

    .line 234
    const-string v0, "imsi = ?"

    .line 235
    .local v0, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 236
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$NsdsConfigs;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 238
    .local v2, "noDeletes":I
    if-lez v2, :cond_0

    .line 239
    sget-object v3, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Deleted NSDS configs: successfully"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method

.method public getActiveMsisdns(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p1, "deviceUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 896
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 899
    .local v0, "msisdnsIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    const-string v1, "msisdn"

    const-string v2, "_id"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    .line 900
    .local v5, "projection":[Ljava/lang/String;
    const-string/jumbo v6, "service_instance_id IS NOT NULL"

    .line 901
    .local v6, "selection":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildActiveLinesWithServicveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 903
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 904
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 905
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 904
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 901
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "msisdnsIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local p0    # "this":Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;
    .end local p1    # "deviceUid":Ljava/lang/String;
    :cond_0
    :goto_1
    throw v2

    .line 908
    .restart local v0    # "msisdnsIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local p0    # "this":Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;
    .restart local p1    # "deviceUid":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 911
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v5    # "projection":[Ljava/lang/String;
    .end local v6    # "selection":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 909
    :catch_0
    move-exception v1

    .line 910
    .local v1, "sqe":Landroid/database/sqlite/SQLiteException;
    sget-object v2, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveLines failed with:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    .end local v1    # "sqe":Landroid/database/sqlite/SQLiteException;
    :goto_2
    return-object v0
.end method

.method public getDeviceConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "imsi"    # Ljava/lang/String;

    .line 150
    const-string v0, "device_config"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "projection":[Ljava/lang/String;
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    .line 155
    .local v0, "uriDeviceConfig":Landroid/net/Uri;
    const-string v7, "imsi = ?"

    .line 156
    .local v7, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v5, v8

    .line 157
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    move-object v2, v0

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 158
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_0
    return-object v2

    .line 157
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2

    .line 161
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 162
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDeviceId(Ljava/lang/String;)I
    .locals 8
    .param p1, "deviceUId"    # Ljava/lang/String;

    .line 873
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceId: for deviceId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :try_start_0
    const-string v5, "device_uid = ?"

    .line 877
    .local v5, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    .line 879
    .local v6, "selectionArgs":[Ljava/lang/String;
    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    .line 880
    .local v4, "projection":[Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Devices;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 882
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 883
    .local v0, "rowId":I
    sget-object v2, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDeviceId: returned :"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 884
    nop

    .line 888
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 884
    :cond_0
    return v0

    .line 886
    .end local v0    # "rowId":I
    :cond_1
    :try_start_3
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceId: Could not find deviceUID :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 888
    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 891
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 880
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;
    .end local p1    # "deviceUId":Ljava/lang/String;
    :cond_3
    :goto_0
    throw v0
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 889
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;
    .restart local p1    # "deviceUId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 890
    .local v0, "sqe":Landroid/database/sqlite/SQLiteException;
    sget-object v1, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQL exception while getDeviceId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    .end local v0    # "sqe":Landroid/database/sqlite/SQLiteException;
    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method public getGcmToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "senderId"    # Ljava/lang/String;
    .param p2, "deviceUid"    # Ljava/lang/String;

    .line 108
    const-string v0, "gcm_token"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "projection":[Ljava/lang/String;
    const-string/jumbo v0, "sender_id = ? AND device_uid = ?"

    .line 112
    .local v0, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    const/4 v1, 0x1

    aput-object p2, v5, v1

    .line 114
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$GcmTokens;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 116
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 118
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_0
    return-object v2

    .line 114
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2

    .line 120
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 121
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLineDetail(JLjava/lang/String;Z)Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;
    .locals 5
    .param p1, "lineId"    # J
    .param p3, "localDeviceUid"    # Ljava/lang/String;
    .param p4, "includeServiceDetails"    # Z

    .line 725
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 726
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getLineDetail: lineId is zero/negative"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const/4 v0, 0x0

    return-object v0

    .line 729
    :cond_0
    const-string v0, "lines._id = ?"

    .line 730
    .local v0, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 731
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-direct {p0, v0, v1, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getLineDetail(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    move-result-object v2

    .line 732
    .local v2, "lineDetail":Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;
    if-eqz p4, :cond_1

    .line 733
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getServiceInstanceForLocalDevice(JLjava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;

    move-result-object v3

    .line 734
    .local v3, "serviceInstanceDetail":Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;
    if-eqz v3, :cond_1

    .line 735
    iget-object v4, v3, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;->serviceFingerPrint:Ljava/lang/String;

    iput-object v4, v2, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->serviceFingerPrint:Ljava/lang/String;

    .line 736
    iget-object v4, v3, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;->serviceInstanceId:Ljava/lang/String;

    iput-object v4, v2, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->serviceInstanceId:Ljava/lang/String;

    .line 737
    iget-object v4, v3, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;->serviceTokenExpiryTime:Ljava/lang/String;

    iput-object v4, v2, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->serviceTokenExpiryTime:Ljava/lang/String;

    .line 740
    .end local v3    # "serviceInstanceDetail":Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;
    :cond_1
    return-object v2
.end method

.method public getLineIdOnDevice(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 12
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "deviceUid"    # Ljava/lang/String;
    .param p3, "status"    # I

    .line 440
    const-string v0, "msisdn = ? AND status = ?"

    .line 441
    .local v0, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 442
    .local v1, "selectionArgs":[Ljava/lang/String;
    const/4 v3, -0x1

    if-ne p3, v3, :cond_0

    .line 443
    const-string v0, "msisdn = ?"

    .line 444
    new-array v3, v4, [Ljava/lang/String;

    aput-object p1, v3, v2

    move-object v1, v3

    .line 447
    :cond_0
    const-string v3, "_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    .line 449
    .local v5, "projection":[Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 450
    .local v9, "builder":Landroid/net/Uri$Builder;
    const-string v3, "device_uid"

    invoke-virtual {v9, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 452
    const-wide/16 v10, -0x1

    .line 453
    .local v10, "lineId":J
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v8, 0x0

    move-object v6, v0

    move-object v7, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 455
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_2

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 456
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v10, v6

    goto :goto_1

    .line 453
    :catchall_0
    move-exception v2

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2

    .line 458
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 459
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_3
    sget-object v2, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLineIdOnDevice(): lineId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-wide v10
.end method

.method public getNativeLineDetail(Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;
    .locals 4
    .param p1, "localDeviceUid"    # Ljava/lang/String;
    .param p2, "includeServiceDetails"    # Z

    .line 707
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeLineId(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 708
    .local v0, "nativeLineId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 709
    sget-object v2, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getNativeLineDetail: native line id not found"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const/4 v2, 0x0

    return-object v2

    .line 713
    :cond_0
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getLineDetail(JLjava/lang/String;Z)Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    move-result-object v2

    return-object v2
.end method

.method public getNativeLineE911AidExp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "localDeviceUid"    # Ljava/lang/String;

    .line 744
    const/4 v0, 0x0

    .line 745
    .local v0, "e911AidExp":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeLineDetail(Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    move-result-object v1

    .line 746
    .local v1, "nativeLineDetail":Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;
    if-eqz v1, :cond_0

    .line 747
    iget-object v0, v1, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->e911AidExpiration:Ljava/lang/String;

    .line 749
    :cond_0
    return-object v0
.end method

.method public getNativeLineId(Ljava/lang/String;)I
    .locals 8
    .param p1, "deviceUid"    # Ljava/lang/String;

    .line 679
    const/4 v0, -0x1

    .line 681
    .local v0, "nativeLineId":I
    :try_start_0
    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    .line 682
    .local v4, "projection":[Ljava/lang/String;
    const-string v5, "is_native = ?"

    .line 683
    .local v5, "selection":Ljava/lang/String;
    const-string v1, "1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    .line 685
    .local v6, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildLinesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 688
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 689
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto :goto_0

    .line 685
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "nativeLineId":I
    .end local p0    # "this":Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;
    .end local p1    # "deviceUid":Ljava/lang/String;
    :cond_0
    :goto_1
    throw v2

    .line 692
    .restart local v0    # "nativeLineId":I
    .restart local p0    # "this":Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;
    .restart local p1    # "deviceUid":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 695
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 693
    :catch_0
    move-exception v1

    .line 694
    .local v1, "sqe":Landroid/database/sqlite/SQLiteException;
    sget-object v2, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNativeLineId failed with:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    .end local v1    # "sqe":Landroid/database/sqlite/SQLiteException;
    :goto_2
    return v0
.end method

.method public getNativeMsisdn(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "deviceUid"    # Ljava/lang/String;

    .line 651
    const/4 v0, 0x0

    .line 654
    .local v0, "nativeMsisdn":Ljava/lang/String;
    :try_start_0
    const-string v1, "msisdn"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    .line 655
    .local v4, "projection":[Ljava/lang/String;
    const-string v5, "is_native = ?"

    .line 656
    .local v5, "selection":Ljava/lang/String;
    const-string v1, "1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    .line 658
    .local v6, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildLinesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 661
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 662
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    .line 658
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "nativeMsisdn":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;
    .end local p1    # "deviceUid":Ljava/lang/String;
    :cond_0
    :goto_1
    throw v2

    .line 665
    .restart local v0    # "nativeMsisdn":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;
    .restart local p1    # "deviceUid":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 668
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 666
    :catch_0
    move-exception v1

    .line 667
    .local v1, "sqe":Landroid/database/sqlite/SQLiteException;
    sget-object v2, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNativeMsisdn failed with:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    .end local v1    # "sqe":Landroid/database/sqlite/SQLiteException;
    :goto_2
    return-object v0
.end method

.method public getReadyForUseMsisdns(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "deviceUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 916
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .local v0, "msisdns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v4, "reg_status = ?"

    .line 920
    .local v4, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v1, v5, v7

    .line 921
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v1, "msisdn"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 922
    .local v3, "projection":[Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildLinesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 924
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 925
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 922
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    :try_start_3
    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "msisdns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;
    .end local p1    # "deviceUid":Ljava/lang/String;
    :cond_0
    :goto_1
    throw v2

    .line 928
    .restart local v0    # "msisdns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;
    .restart local p1    # "deviceUid":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 931
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 929
    :catch_0
    move-exception v1

    .line 930
    .local v1, "sqe":Landroid/database/sqlite/SQLiteException;
    sget-object v2, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveLines failed with:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    .end local v1    # "sqe":Landroid/database/sqlite/SQLiteException;
    :goto_2
    return-object v0
.end method

.method public getServiceInstanceForLocalDevice(JLjava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;
    .locals 11
    .param p1, "lineId"    # J
    .param p3, "deviceUid"    # Ljava/lang/String;

    .line 779
    const-string/jumbo v0, "service_name"

    const-string/jumbo v1, "service_fingerprint"

    const-string/jumbo v2, "service_instance_id"

    const-string/jumbo v3, "service_instance_token"

    const-string/jumbo v4, "service_token_expire_time"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 781
    .local v7, "projection":[Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getDeviceId(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildServicesUri(JJ)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 783
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 784
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 785
    new-instance v1, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;-><init>()V

    .line 786
    .local v1, "serviceInstanceDetail":Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;->serviceName:Ljava/lang/String;

    .line 787
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;->serviceFingerPrint:Ljava/lang/String;

    .line 788
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;->serviceInstanceId:Ljava/lang/String;

    .line 789
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;->serviceInstanceToken:Ljava/lang/String;

    .line 790
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;->serviceTokenExpiryTime:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    nop

    .line 794
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 791
    :cond_0
    return-object v1

    .line 781
    .end local v1    # "serviceInstanceDetail":Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 794
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 795
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertDeviceConfig(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "resManageConn"    # Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object v0, v1

    .line 176
    const-string v1, "device_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    if-eqz p2, :cond_0

    .line 178
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    const-string v2, "device_config"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 186
    .local v1, "configUri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 187
    sget-object v2, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "inserted device config in device config successfully"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v1    # "configUri":Landroid/net/Uri;
    :cond_2
    return-void
.end method

.method public insertOrUpdateGcmPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "senderId"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "protocolToServer"    # Ljava/lang/String;
    .param p4, "deviceUid"    # Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertOrUpdateForGcmToken: token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", senderId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->isGcmTokenAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-direct {p0, p2, p1, p4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->updateGcmPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->insertGcmPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 58
    :cond_2
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "insertFcmToken: empty or null input"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public insertOrUpdateNativeLine(JLjava/lang/String;Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;)J
    .locals 24
    .param p1, "accountId"    # J
    .param p3, "deviceUId"    # Ljava/lang/String;
    .param p4, "reponseGetMsisdn"    # Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;

    .line 534
    move-object/from16 v10, p0

    move-object/from16 v11, p4

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->insertDeviceIfNotExists(JLjava/lang/String;ZZ)J

    move-result-wide v12

    .line 535
    .local v12, "deviceRowId":J
    iget-object v0, v11, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    invoke-direct {v10, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getLineIdFromAllLinesIf(Ljava/lang/String;)J

    move-result-wide v14

    .line 536
    .local v14, "lineId":J
    const-wide/16 v0, -0x1

    cmp-long v0, v14, v0

    const-string v9, "insertOrUpdateNativeLine: Updated service.is_native successfully for device:"

    const-string v8, "is_native"

    const-string v7, " and lineId:"

    const/4 v1, 0x1

    .line 551
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 536
    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 537
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "native msisdn does not exist in db, creating one"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v3, v11, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    iget-object v4, v11, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    .line 539
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    iget-object v1, v11, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->serviceFingerprint:Ljava/lang/String;

    .line 538
    const-string/jumbo v17, "vowifi"

    move-object/from16 v0, p0

    move-object/from16 v18, v1

    move-wide/from16 v1, p1

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-wide v3, v12

    move-wide/from16 v21, v14

    move-object v14, v5

    .end local v14    # "lineId":J
    .local v21, "lineId":J
    move-object/from16 v5, v19

    move-object v15, v6

    move-object/from16 v6, v20

    move-object/from16 v23, v7

    move-object/from16 v7, v16

    move-object v14, v8

    move-object/from16 v8, v17

    move-object v11, v9

    move-object/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->insertLineWithServiceDetail(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 541
    .end local v21    # "lineId":J
    .local v0, "lineId":J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 542
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {v2, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 543
    iget-object v3, v10, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v12, v13, v0, v1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildServicesUri(JJ)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 544
    .local v3, "noUpdates":I
    if-lez v3, :cond_0

    .line 545
    sget-object v4, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v6, v23

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "noUpdates":I
    :cond_0
    move-wide v14, v0

    move-object/from16 v1, p4

    goto/16 :goto_1

    .line 549
    .end local v0    # "lineId":J
    .restart local v14    # "lineId":J
    :cond_1
    move-object v11, v9

    move-wide/from16 v21, v14

    move-object v15, v6

    move-object v6, v7

    move-object v14, v8

    .end local v14    # "lineId":J
    .restart local v21    # "lineId":J
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "native msisdn does exist in db, add service fingerprint and is_native attribute"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 551
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    const-string/jumbo v1, "service_name"

    const-string/jumbo v2, "vowifi"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    move-object/from16 v1, p4

    move-object v2, v11

    iget-object v3, v1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    const-string/jumbo v4, "service_msisdn"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v3, v1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->serviceFingerprint:Ljava/lang/String;

    const-string/jumbo v4, "service_fingerprint"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    move-wide/from16 v3, v21

    .end local v21    # "lineId":J
    .local v3, "lineId":J
    invoke-direct {v10, v12, v13, v3, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->doesServiceExists(JJ)Z

    move-result v5

    if-nez v5, :cond_3

    .line 557
    iget-object v2, v10, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v12, v13, v3, v4}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildServicesUri(JJ)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 558
    .local v2, "uriService":Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 559
    sget-object v5, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertOrUpdateNativeLine: created service entry for:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    .end local v2    # "uriService":Landroid/net/Uri;
    :cond_2
    goto :goto_0

    .line 563
    :cond_3
    iget-object v5, v10, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v12, v13, v3, v4}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildServicesUri(JJ)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v0, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 565
    .local v5, "noUpdates":I
    if-lez v5, :cond_4

    .line 566
    sget-object v7, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v5    # "noUpdates":I
    :cond_4
    :goto_0
    move-wide v14, v3

    .end local v3    # "lineId":J
    .restart local v14    # "lineId":J
    :goto_1
    return-wide v14
.end method

.method public isDeviceConfigAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "imsi"    # Ljava/lang/String;

    .line 125
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getDeviceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isDeviceConfigAvailable: no config"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x0

    return v0

    .line 129
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isE911InfoAvailForNativeLine(Ljava/lang/String;)Z
    .locals 4
    .param p1, "localDeviceUid"    # Ljava/lang/String;

    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeLineDetail(Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    move-result-object v1

    .line 313
    .local v1, "detail":Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;
    if-nez v1, :cond_0

    .line 314
    sget-object v2, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "isE911InfoAvailForNativeLine: line info missing"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return v0

    .line 317
    :cond_0
    iget-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->e911AddressId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 318
    sget-object v2, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "isE911InfoAvailForNativeLine: e911 aid missing"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return v0

    .line 321
    :cond_1
    iget v2, v1, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->locationStatus:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 322
    sget-object v2, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "isE911InfoAvailForNativeLine: loc status false"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return v0

    .line 325
    :cond_2
    return v3
.end method

.method public isGcmTokenAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "senderId"    # Ljava/lang/String;
    .param p2, "deviceUid"    # Ljava/lang/String;

    .line 100
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getGcmToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 101
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isGcmTokenAvailable: no GCM token"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public resetAccountStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceUid"    # Ljava/lang/String;

    .line 288
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetAccountStatus()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->setLocalDevicePrimary(Ljava/lang/String;Z)V

    .line 292
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "access_token"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "access_token_expiry"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "access_token_type"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public resetDeviceStatus(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "deviceUid"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .line 298
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "device_state"

    const-string v2, "deactivated"

    invoke-static {v0, p1, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "entitlement_state"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "imsi_eap"

    invoke-static {v0, p3, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->removePrefForSlot(Landroid/content/Context;ILjava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->removeAkaToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "push_token"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sent_token_to_server"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->clearEntitlementServerUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->resetE911AidInfoForNativeLine(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public resetE911AidInfoForNativeLine(Ljava/lang/String;)V
    .locals 7
    .param p1, "deviceUid"    # Ljava/lang/String;

    .line 329
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 330
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "e911_address_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 331
    const-string v1, "e911_aid_expiration"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 332
    const-string v1, "e911_server_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 333
    const-string v1, "e911_server_url"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 334
    const-string v1, "_id = ?"

    .line 335
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeLineId(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 336
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 337
    .local v3, "noUpdates":I
    if-lez v3, :cond_0

    .line 338
    sget-object v4, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetE911AidInfoForNativeLine: success "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_0
    return-void
.end method

.method public setLocalDevicePrimary(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "deviceUid"    # Ljava/lang/String;
    .param p2, "isPrimary"    # Z

    .line 814
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLocalDevicePrimary: isPrimary "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 817
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_primary"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 819
    const-string v1, "is_local = ? AND device_uid = ?"

    .line 820
    .local v1, "updateSelection":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 821
    .local v2, "updateSelectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Devices;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 823
    .local v3, "noUpdates":I
    if-lez v3, :cond_0

    .line 824
    sget-object v4, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "setLocalDevicePrimary: update success"

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :cond_0
    return-void
.end method

.method public updateDeviceConfig(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "resManageConn"    # Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;

    .line 205
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDeviceConfig: version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object v0, v1

    .line 209
    if-eqz p2, :cond_0

    .line 210
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_0
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    const-string v2, "device_config"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$NsdsConfigs;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 219
    .local v1, "noDeletes":I
    sget-object v2, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No of entries deleted from nsds_config :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v2, "device_id = ?"

    .line 222
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    .line 223
    .local v3, "selectionArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 224
    .local v4, "noUpdates":I
    if-lez v4, :cond_2

    .line 225
    sget-object v5, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updated device config in device config successfully with version:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for deviceId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .end local v1    # "noDeletes":I
    .end local v2    # "selection":Ljava/lang/String;
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    .end local v4    # "noUpdates":I
    :cond_2
    goto :goto_0

    .line 229
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "No update on the config"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_0
    return-void
.end method

.method public updateDeviceName(JLjava/lang/String;)V
    .locals 7
    .param p1, "deviceRowId"    # J
    .param p3, "deviceName"    # Ljava/lang/String;

    .line 846
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 847
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "device_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v1, "_id = ?"

    .line 849
    .local v1, "updateSelection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 850
    .local v2, "updateSelectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Devices;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 852
    .local v3, "noUpdates":I
    if-lez v3, :cond_0

    .line 853
    sget-object v4, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updated device name successsfully to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    :cond_0
    return-void
.end method

.method public updateDeviceName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceUId"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;

    .line 835
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating device name for deviceUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getDeviceId(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->updateDeviceName(JLjava/lang/String;)V

    .line 837
    return-void
.end method

.method public updateLineName(JLjava/lang/String;)V
    .locals 7
    .param p1, "lineId"    # J
    .param p3, "friendlyLineName"    # Ljava/lang/String;

    .line 858
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 859
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "friendly_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v1, "_id = ?"

    .line 861
    .local v1, "updateSelection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 862
    .local v2, "updateSelectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 864
    .local v3, "noUpdates":I
    if-lez v3, :cond_0

    .line 865
    sget-object v4, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateLineName Successful. Line name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :cond_0
    return-void
.end method

.method public updateLocationAndTcStatus(JLcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;Ljava/lang/String;I)V
    .locals 10
    .param p1, "lineId"    # J
    .param p3, "responseLocation"    # Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;
    .param p4, "deviceUid"    # Ljava/lang/String;
    .param p5, "slotid"    # I

    .line 381
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLocationAndTcStatus: lineId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 383
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz p3, :cond_6

    .line 384
    const/4 v1, 0x0

    .line 385
    .local v1, "locationStatus":I
    iget-object v2, p3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->locationStatus:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 386
    const/4 v1, -0x1

    goto :goto_0

    .line 387
    :cond_0
    iget-object v2, p3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->locationStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 388
    const/4 v1, 0x1

    .line 391
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 392
    .local v2, "tcStatus":I
    iget-object v3, p3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->tcStatus:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    .line 393
    const/4 v2, -0x1

    goto :goto_1

    .line 394
    :cond_2
    iget-object v3, p3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->tcStatus:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 395
    const/4 v2, 0x1

    .line 398
    :cond_3
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "location_status"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "tc_status"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    iget-object v3, p3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->addressId:Ljava/lang/String;

    const-string v4, "e911_address_id"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v3, p3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->aidExpiration:Ljava/lang/String;

    const-string v4, "e911_aid_expiration"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v3, p3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->serverData:Ljava/lang/String;

    const-string v4, "e911_server_data"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v3, p3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->serverUrl:Ljava/lang/String;

    const-string v4, "e911_server_url"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v3, "_id = ?"

    .line 405
    .local v3, "updateSelection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 406
    .local v4, "updateSelectionArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v7, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 408
    .local v5, "noUpdates":I
    if-lez v5, :cond_4

    .line 409
    sget-object v7, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "updateLocationAndTcStatus: success"

    invoke-static {v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_4
    invoke-virtual {p0, p1, p2, p4, v6}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getLineDetail(JLjava/lang/String;Z)Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    move-result-object v6

    .line 412
    .local v6, "lineDetail":Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;
    if-nez v6, :cond_5

    .line 413
    sget-object v7, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "updateLocationAndTcStatus Line detail is NULL"

    invoke-static {v7, v8}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 415
    :cond_5
    sget-object v7, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateLocationAndTcStatus location status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->locationStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", tc status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->tcStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", e911 AID Expirsation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->e911AidExpiration:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    sget-object v7, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", e911 AID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->e911AddressId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-direct {p0, p3, p5}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->broadcastE911AID(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;I)V

    .line 422
    .end local v1    # "locationStatus":I
    .end local v2    # "tcStatus":I
    .end local v3    # "updateSelection":Ljava/lang/String;
    .end local v4    # "updateSelectionArgs":[Ljava/lang/String;
    .end local v5    # "noUpdates":I
    .end local v6    # "lineDetail":Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;
    :cond_6
    :goto_2
    return-void
.end method

.method public updateRegistationStatusForLines(II)V
    .locals 7
    .param p1, "fromStatus"    # I
    .param p2, "toStatus"    # I

    .line 359
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 360
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "reg_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    const-string/jumbo v1, "reg_status = ?"

    .line 363
    .local v1, "updateSelection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 364
    .local v2, "updateSelectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 366
    .local v3, "noUpdates":I
    if-lez v3, :cond_0

    .line 367
    sget-object v4, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateStatusForLines fromStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " toStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_0
    sget-object v4, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Updating lines failed"

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :goto_0
    return-void
.end method

.method public updateRegistationStatusForLines(Ljava/util/List;III)V
    .locals 7
    .param p2, "status"    # I
    .param p3, "fromRegStatus"    # I
    .param p4, "toRegStatus"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;III)V"
        }
    .end annotation

    .line 346
    .local p1, "msisdns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 347
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "reg_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 349
    .local v2, "msisdn":Ljava/lang/String;
    const-string v3, "msisdn = ? AND status = ? AND reg_status = ?"

    .line 350
    .local v3, "updateSelection":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 351
    .local v4, "updateSelectionArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 352
    .end local v2    # "msisdn":Ljava/lang/String;
    .end local v3    # "updateSelection":Ljava/lang/String;
    .end local v4    # "updateSelectionArgs":[Ljava/lang/String;
    goto :goto_0

    .line 353
    :cond_0
    return-void
.end method
