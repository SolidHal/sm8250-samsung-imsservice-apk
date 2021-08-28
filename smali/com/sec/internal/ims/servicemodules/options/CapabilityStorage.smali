.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;
.super Ljava/lang/Object;
.source "CapabilityStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$ContactCapability;,
        Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;,
        Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;,
        Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$CapabilitiesTable;
    }
.end annotation


# static fields
.field private static final APPLY_BATCH_MAX_SIZE:I = 0x64

.field private static final APPLY_BATCH_TIMEOUT:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityStorage"

.field private static final MIMETYPE_RCSE:Ljava/lang/String; = "vnd.android.cursor.item/rcs_data"


# instance fields
.field private mCapabilitiesCache:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

.field private final mContext:Landroid/content/Context;

.field private final mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mIsKor:Z

.field private mNeedResetRcsData:Z

.field private mPhoneId:I

.field private final mUpdater:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "capabilitiesCache"    # Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;
    .param p3, "phoneId"    # I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUserId:I

    .line 69
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    .line 70
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mIsKor:Z

    .line 71
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mNeedResetRcsData:Z

    .line 83
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "CapabilityStorage"

    const/4 v2, 0x5

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 86
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mCapabilitiesCache:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    .line 88
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    .line 89
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUpdater:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    .line 91
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    .line 92
    return-void
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    .line 62
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    .line 62
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUserId:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)Lcom/sec/internal/helper/SimpleEventLog;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUpdater:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    return-object v0
.end method

.method private checkAndDeleteGarbageRcsData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "rawContactId"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .line 866
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v15

    .line 868
    .local v15, "remoteUri":Landroid/net/Uri;
    const-string v0, "data1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 869
    .local v5, "prj":[Ljava/lang/String;
    const-string/jumbo v16, "raw_contact_id = ? AND data1 <> ? AND mimetype = ?"

    .line 872
    .local v16, "sel":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v2, v7, v14

    const/16 v17, 0x1

    aput-object p2, v7, v17

    const/16 v18, 0x2

    const-string/jumbo v19, "vnd.android.cursor.item/rcs_data"

    aput-object v19, v7, v18

    .line 874
    .local v7, "selArgs":[Ljava/lang/String;
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v3 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 877
    .local v3, "cursor":Landroid/database/Cursor;
    if-nez v3, :cond_1

    .line 912
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 878
    :cond_0
    return-void

    .line 880
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v4, :cond_3

    .line 912
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 881
    :cond_2
    return-void

    .line 885
    :cond_3
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 886
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 888
    .local v4, "garbageNumber":Ljava/lang/String;
    const-string/jumbo v6, "raw_contact_id"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v10

    .line 889
    .local v10, "prj2":[Ljava/lang/String;
    const-string/jumbo v11, "raw_contact_id = ? AND data1 = ? AND mimetype <> ?"

    .line 892
    .local v11, "sel2":Ljava/lang/String;
    new-array v12, v0, [Ljava/lang/String;

    aput-object v2, v12, v14

    aput-object v4, v12, v17

    aput-object v19, v12, v18

    .line 894
    .local v12, "selArgs2":[Ljava/lang/String;
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v13, 0x0

    const/4 v6, 0x0

    move-object v9, v15

    move v0, v14

    move-object v14, v6

    invoke-virtual/range {v8 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 897
    .local v6, "cursor2":Landroid/database/Cursor;
    const-string v8, "CapabilityStorage"

    if-eqz v6, :cond_6

    .line 898
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_6

    .line 899
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 900
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 901
    .local v9, "rawId":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkAndDeleteGarbageRcsData: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " has rawContactId("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "), so this is not garbage data"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 906
    if-eqz v6, :cond_4

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_4
    move v14, v0

    const/4 v0, 0x3

    goto :goto_0

    .line 894
    .end local v9    # "rawId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v8, v0

    if-eqz v6, :cond_5

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v9, v0

    :try_start_5
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v5    # "prj":[Ljava/lang/String;
    .end local v7    # "selArgs":[Ljava/lang/String;
    .end local v15    # "remoteUri":Landroid/net/Uri;
    .end local v16    # "sel":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;
    .end local p1    # "rawContactId":Ljava/lang/String;
    .end local p2    # "phoneNumber":Ljava/lang/String;
    :cond_5
    :goto_1
    throw v8

    .line 906
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "prj":[Ljava/lang/String;
    .restart local v7    # "selArgs":[Ljava/lang/String;
    .restart local v15    # "remoteUri":Landroid/net/Uri;
    .restart local v16    # "sel":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;
    .restart local p1    # "rawContactId":Ljava/lang/String;
    .restart local p2    # "phoneNumber":Ljava/lang/String;
    :cond_6
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 908
    .end local v6    # "cursor2":Landroid/database/Cursor;
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkAndDeleteGarbageRcsData: remove garbageNumber("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "), rawContactId("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") from Contact DB"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    invoke-direct {v1, v2, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->deleteFromContactDB(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 911
    .end local v4    # "garbageNumber":Ljava/lang/String;
    .end local v10    # "prj2":[Ljava/lang/String;
    .end local v11    # "sel2":Ljava/lang/String;
    .end local v12    # "selArgs2":[Ljava/lang/String;
    move v14, v0

    const/4 v0, 0x3

    goto/16 :goto_0

    .line 912
    :cond_8
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 913
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_9
    return-void

    .line 874
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_a

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_2
    throw v4
.end method

.method private checkCapability(Lcom/sec/ims/options/Capabilities;)I
    .locals 4
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;

    .line 979
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    const/4 v0, 0x6

    return v0

    .line 983
    :cond_0
    const/4 v0, 0x7

    return v0

    .line 985
    :cond_1
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_5

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 988
    :cond_2
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 989
    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mIsKor:Z

    if-eqz v0, :cond_3

    .line 990
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v0

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    goto :goto_0

    .line 994
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 992
    :cond_4
    :goto_0
    const/4 v0, -0x1

    return v0

    .line 987
    :cond_5
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private deleteAllRcsDataFromContactDB()V
    .locals 4

    .line 795
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v1, "CapabilityStorage"

    const-string v2, "deleteAllRcsDataFromContactDB:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 796
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 798
    .local v0, "remoteUri":Landroid/net/Uri;
    const-string v1, "mimetype = ?"

    .line 799
    .local v1, "sel":Ljava/lang/String;
    const-string/jumbo v2, "vnd.android.cursor.item/rcs_data"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 802
    .local v2, "selArgs":[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    goto :goto_0

    .line 803
    :catch_0
    move-exception v3

    .line 804
    .local v3, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 806
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private deleteFromContactDB(Ljava/lang/String;)V
    .locals 5
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 764
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFromContactDB: phoneNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 765
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 767
    .local v0, "remoteUri":Landroid/net/Uri;
    const-string v1, "Data.DATA1 = ? AND mimetype_id = (SELECT _id FROM mimetypes WHERE mimetype = ?)"

    .line 769
    .local v1, "sel":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "vnd.android.cursor.item/rcs_data"

    aput-object v4, v2, v3

    .line 772
    .local v2, "selArgs":[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    goto :goto_0

    .line 773
    :catch_0
    move-exception v3

    .line 774
    .local v3, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 776
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private deleteFromContactDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "rawContactId"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .line 779
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFromContactDB: phoneNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rawContactId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 780
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 782
    .local v0, "remoteUri":Landroid/net/Uri;
    const-string/jumbo v1, "raw_contact_id = ? AND data1 = ? AND mimetype_id = (SELECT _id FROM mimetypes WHERE mimetype = ?)"

    .line 785
    .local v1, "sel":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "vnd.android.cursor.item/rcs_data"

    aput-object v4, v2, v3

    .line 788
    .local v2, "selArgs":[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    goto :goto_0

    .line 789
    :catch_0
    move-exception v3

    .line 790
    .local v3, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 792
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 240
    const-string v0, "CapabilityStorage"

    if-nez p1, :cond_0

    .line 241
    const-string v1, "endTransaction: db is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void

    .line 246
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    goto :goto_1

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Landroid/database/SQLException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endTransaction: SQLException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 249
    .end local v1    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v1

    .line 250
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endTransaction: SQLiteFullException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_0

    .line 247
    :catch_2
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endTransaction: IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 254
    :goto_1
    return-void
.end method

.method private fillCapexInfo(Landroid/content/ContentValues;Lcom/sec/ims/options/Capabilities;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "capex"    # Lcom/sec/ims/options/Capabilities;

    .line 257
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getContactId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uri"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "available"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 260
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "timestamp"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 261
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "display_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "features"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 264
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "avail_features"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 265
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "phone_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v0, "ext":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getExtFeature()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 269
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ext_features"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->hasPresenceSupport()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "presence_support"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 277
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getLegacyLatching()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "legacy_latching"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 278
    return-void
.end method

.method private getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;

    .line 917
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v0

    .line 918
    .local v0, "userId":I
    invoke-static {p1, v0}, Lcom/sec/ims/extensions/Extensions$ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private insertToContactDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V
    .locals 6
    .param p1, "rawContactId"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "normalizedNumber"    # Ljava/lang/String;
    .param p4, "capex"    # Lcom/sec/ims/options/Capabilities;

    .line 844
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertToContactDB: phoneNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rawContactId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 845
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->checkCapability(Lcom/sec/ims/options/Capabilities;)I

    move-result v0

    .line 846
    .local v0, "cap":I
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 847
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    goto :goto_0

    .line 851
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->checkAndDeleteGarbageRcsData(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    invoke-direct {p0, p4, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setContentValues(Lcom/sec/ims/options/Capabilities;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 854
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/rcs_data"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string/jumbo v3, "raw_contact_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v3, "data1"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v3, "data2"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 861
    .local v3, "remoteUri":Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 862
    .local v4, "op":Landroid/content/ContentProviderOperation;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUpdater:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->tryPut(Landroid/content/ContentProviderOperation;)V

    .line 863
    return-void

    .line 848
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "remoteUri":Landroid/net/Uri;
    .end local v4    # "op":Landroid/content/ContentProviderOperation;
    :cond_1
    :goto_0
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v4, "insertToContactDB: Ignore inserting CAPABLE_NULL or CAPABLE_NONE"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 849
    return-void
.end method

.method private isOppositeCapexNull(Lcom/sec/ims/options/Capabilities;)Z
    .locals 8
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;

    .line 697
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    const-string v1, "CapabilityStorage"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 698
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v3, "dual rcs is not enabled."

    invoke-static {v1, v0, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 699
    return v2

    .line 701
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getPhoneId()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 702
    .local v0, "oppositePhoneId":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v4

    .line 703
    .local v4, "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    invoke-interface {v4, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v5

    .line 704
    .local v5, "oppositeCapex":Lcom/sec/ims/options/Capabilities;
    if-nez v5, :cond_2

    .line 705
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string/jumbo v6, "oppositeCapex is null."

    invoke-static {v1, v3, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 706
    return v2

    .line 707
    :cond_2
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->checkCapability(Lcom/sec/ims/options/Capabilities;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 708
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string/jumbo v6, "oppositeCapex is CAPABLE_NULL."

    invoke-static {v1, v3, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 709
    return v2

    .line 711
    :cond_3
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string/jumbo v6, "oppositeCapex is not CAPABLE_NULL."

    invoke-static {v1, v2, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 712
    return v3
.end method

.method private needUpdateToContactDB(ZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .param p1, "isNotifyUpdated"    # Z
    .param p2, "rawId"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "capex"    # Lcom/sec/ims/options/Capabilities;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/options/Capabilities;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 611
    .local p5, "rcsFeatures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "rcsAvailableFeatures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 612
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    if-eqz p1, :cond_0

    .line 613
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->updateToContactDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V

    goto/16 :goto_0

    .line 614
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const-string v2, "N,"

    const-string v3, "CapabilityStorage"

    const-string v4, ","

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 615
    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needUpdateToContactDB: capex(longFeatures) is different with contact db = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 616
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const v1, 0x12040004

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {p4}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 618
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 620
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->updateToContactDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V

    goto :goto_0

    .line 621
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    invoke-interface {p6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 622
    invoke-interface {p6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needUpdateToContactDB: capex(availableFeatures) is different with contact db = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-interface {p6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 623
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const v1, 0x12040005

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {p4}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 625
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 627
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->updateToContactDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V

    .line 629
    :cond_3
    :goto_0
    return-void
.end method

.method private putCapabilityToContactDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;Z)V
    .locals 24
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "normalizedNumber"    # Ljava/lang/String;
    .param p3, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p4, "isNotifyUpdated"    # Z

    .line 538
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    iget v0, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putCapabilityToContactDB: phoneNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 539
    const/4 v0, 0x0

    .line 540
    .local v0, "selArgs":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v12, v1

    .line 541
    .local v12, "rcsFeatures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v13, v1

    .line 546
    .local v13, "rcsAvailableFeatures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setRemoteUri()Landroid/net/Uri;

    move-result-object v7

    .line 547
    .local v7, "remoteUri":Landroid/net/Uri;
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setProjection()[Ljava/lang/String;

    move-result-object v21

    .line 548
    .local v21, "prj":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setSelection()Ljava/lang/String;

    move-result-object v22

    .line 549
    .local v22, "sel":Ljava/lang/String;
    iget v1, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "putCapabilityToContactDB: remoteUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 551
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    const-string/jumbo v5, "vnd.android.cursor.item/phone_v2"

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v5, 0x2

    const-string/jumbo v15, "vnd.android.cursor.item/rcs_data"

    aput-object v15, v3, v5

    move-object/from16 v18, v3

    .line 555
    .end local v0    # "selArgs":[Ljava/lang/String;
    .local v18, "selArgs":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 556
    .local v3, "rawIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .line 557
    .local v23, "rawIdList_rcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v15

    move-object v15, v7

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    invoke-virtual/range {v14 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v14

    .line 558
    .local v14, "cursor":Landroid/database/Cursor;
    if-nez v14, :cond_1

    .line 559
    :try_start_0
    const-string/jumbo v0, "putCapabilityToContactDB: cursor is null"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 560
    :cond_0
    return-void

    .line 557
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v7

    goto/16 :goto_4

    .line 563
    :cond_1
    :try_start_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 564
    .end local v3    # "rawIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v15, "rawIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 566
    .end local v23    # "rawIdList_rcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "rawIdList_rcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-lez v16, :cond_5

    .line 567
    :goto_0
    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 568
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 569
    .local v17, "rawContactId":Ljava/lang/String;
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v19, v16

    .line 570
    .local v19, "mimeType":Ljava/lang/String;
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v20, v16

    .line 571
    .local v20, "longFeatures":Ljava/lang/String;
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v23, v16

    .line 573
    .local v23, "longAvailableFeatures":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "normalizedPhoneNumber":Ljava/lang/String;
    move-object/from16 v4, v19

    .end local v19    # "mimeType":Ljava/lang/String;
    .local v4, "mimeType":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 576
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 577
    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 578
    move-object/from16 v5, v17

    .end local v17    # "rawContactId":Ljava/lang/String;
    .local v5, "rawContactId":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    move-object/from16 v6, v20

    .end local v20    # "longFeatures":Ljava/lang/String;
    .local v6, "longFeatures":Ljava/lang/String;
    invoke-interface {v12, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    move-object/from16 v20, v0

    move-object/from16 v0, v23

    .end local v23    # "longAvailableFeatures":Ljava/lang/String;
    .local v0, "longAvailableFeatures":Ljava/lang/String;
    invoke-interface {v13, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 577
    .end local v0    # "longAvailableFeatures":Ljava/lang/String;
    .end local v5    # "rawContactId":Ljava/lang/String;
    .end local v6    # "longFeatures":Ljava/lang/String;
    .restart local v17    # "rawContactId":Ljava/lang/String;
    .restart local v20    # "longFeatures":Ljava/lang/String;
    .restart local v23    # "longAvailableFeatures":Ljava/lang/String;
    :cond_2
    move-object/from16 v5, v17

    move-object/from16 v6, v20

    move-object/from16 v20, v0

    move-object/from16 v0, v23

    .end local v17    # "rawContactId":Ljava/lang/String;
    .end local v20    # "longFeatures":Ljava/lang/String;
    .end local v23    # "longAvailableFeatures":Ljava/lang/String;
    .restart local v0    # "longAvailableFeatures":Ljava/lang/String;
    .restart local v5    # "rawContactId":Ljava/lang/String;
    .restart local v6    # "longFeatures":Ljava/lang/String;
    goto :goto_1

    .line 583
    .end local v0    # "longAvailableFeatures":Ljava/lang/String;
    .end local v5    # "rawContactId":Ljava/lang/String;
    .end local v6    # "longFeatures":Ljava/lang/String;
    .restart local v17    # "rawContactId":Ljava/lang/String;
    .restart local v20    # "longFeatures":Ljava/lang/String;
    .restart local v23    # "longAvailableFeatures":Ljava/lang/String;
    :cond_3
    move-object/from16 v5, v17

    move-object/from16 v6, v20

    move-object/from16 v20, v0

    move-object/from16 v0, v23

    .end local v17    # "rawContactId":Ljava/lang/String;
    .end local v20    # "longFeatures":Ljava/lang/String;
    .end local v23    # "longAvailableFeatures":Ljava/lang/String;
    .restart local v0    # "longAvailableFeatures":Ljava/lang/String;
    .restart local v5    # "rawContactId":Ljava/lang/String;
    .restart local v6    # "longFeatures":Ljava/lang/String;
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 575
    .end local v0    # "longAvailableFeatures":Ljava/lang/String;
    .end local v5    # "rawContactId":Ljava/lang/String;
    .end local v6    # "longFeatures":Ljava/lang/String;
    .restart local v17    # "rawContactId":Ljava/lang/String;
    .restart local v20    # "longFeatures":Ljava/lang/String;
    .restart local v23    # "longAvailableFeatures":Ljava/lang/String;
    :cond_4
    move-object/from16 v5, v17

    move-object/from16 v6, v20

    move-object/from16 v20, v0

    move-object/from16 v0, v23

    .line 586
    .end local v1    # "normalizedPhoneNumber":Ljava/lang/String;
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v17    # "rawContactId":Ljava/lang/String;
    .end local v20    # "longFeatures":Ljava/lang/String;
    .end local v23    # "longAvailableFeatures":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v20

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto :goto_0

    .line 557
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v23, v3

    move-object/from16 v17, v7

    move-object v3, v15

    goto/16 :goto_4

    .line 588
    :cond_5
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 590
    .end local v14    # "cursor":Landroid/database/Cursor;
    :cond_6
    iget v0, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "putCapabilityToContactDB: rawIdList = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", rawIdList_rcs = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 592
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-direct {v8, v11}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->checkCapability(Lcom/sec/ims/options/Capabilities;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 593
    invoke-direct {v8, v11}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->isOppositeCapexNull(Lcom/sec/ims/options/Capabilities;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 594
    const-string/jumbo v0, "putCapabilityToContactDB: delete from contact db"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->deleteFromContactDB(Ljava/lang/String;)V

    .line 597
    :cond_7
    return-void

    .line 600
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    .line 601
    .local v14, "rawId":Ljava/lang/String;
    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object/from16 v16, v3

    .end local v3    # "rawIdList_rcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v16, "rawIdList_rcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v3, v14

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v12

    move-object/from16 v17, v7

    .end local v7    # "remoteUri":Landroid/net/Uri;
    .local v17, "remoteUri":Landroid/net/Uri;
    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->needUpdateToContactDB(ZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;Ljava/util/Map;Ljava/util/Map;)V

    .line 602
    invoke-interface {v15, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 603
    .end local v14    # "rawId":Ljava/lang/String;
    move-object/from16 v3, v16

    move-object/from16 v7, v17

    goto :goto_2

    .line 604
    .end local v16    # "rawIdList_rcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "remoteUri":Landroid/net/Uri;
    .restart local v3    # "rawIdList_rcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "remoteUri":Landroid/net/Uri;
    :cond_9
    move-object/from16 v16, v3

    move-object/from16 v17, v7

    .end local v3    # "rawIdList_rcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "remoteUri":Landroid/net/Uri;
    .restart local v16    # "rawIdList_rcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "remoteUri":Landroid/net/Uri;
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 605
    .local v1, "rawId":Ljava/lang/String;
    invoke-direct {v8, v1, v9, v10, v11}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->insertToContactDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V

    .line 606
    .end local v1    # "rawId":Ljava/lang/String;
    goto :goto_3

    .line 607
    :cond_a
    return-void

    .line 557
    .end local v16    # "rawIdList_rcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "remoteUri":Landroid/net/Uri;
    .restart local v3    # "rawIdList_rcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "remoteUri":Landroid/net/Uri;
    .local v14, "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v17, v7

    move-object v1, v0

    move-object v3, v15

    move-object/from16 v23, v16

    .end local v3    # "rawIdList_rcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "remoteUri":Landroid/net/Uri;
    .restart local v16    # "rawIdList_rcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "remoteUri":Landroid/net/Uri;
    goto :goto_4

    .end local v16    # "rawIdList_rcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "remoteUri":Landroid/net/Uri;
    .restart local v7    # "remoteUri":Landroid/net/Uri;
    .local v23, "rawIdList_rcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_3
    move-exception v0

    move-object/from16 v17, v7

    move-object v1, v0

    move-object v3, v15

    .end local v7    # "remoteUri":Landroid/net/Uri;
    .restart local v17    # "remoteUri":Landroid/net/Uri;
    goto :goto_4

    .end local v15    # "rawIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "remoteUri":Landroid/net/Uri;
    .local v3, "rawIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "remoteUri":Landroid/net/Uri;
    :catchall_4
    move-exception v0

    move-object/from16 v17, v7

    move-object v1, v0

    .end local v7    # "remoteUri":Landroid/net/Uri;
    .restart local v17    # "remoteUri":Landroid/net/Uri;
    :goto_4
    if-eqz v14, :cond_b

    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_5
    throw v1
.end method

.method private remove(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 211
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Capabilities"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 213
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 214
    .local v1, "uri":Lcom/sec/ims/util/ImsUri;
    const-string/jumbo v2, "uri=?"

    .line 215
    .local v2, "where":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "capabilities"

    invoke-virtual {p1, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 216
    .end local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v2    # "where":Ljava/lang/String;
    goto :goto_0

    .line 217
    :cond_0
    return-void
.end method

.method private setContentValues(Lcom/sec/ims/options/Capabilities;)Landroid/content/ContentValues;
    .locals 2
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;

    .line 736
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->checkCapability(Lcom/sec/ims/options/Capabilities;)I

    move-result v0

    .line 737
    .local v0, "cap":I
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setContentValues(Lcom/sec/ims/options/Capabilities;I)Landroid/content/ContentValues;

    move-result-object v1

    return-object v1
.end method

.method private setContentValues(Lcom/sec/ims/options/Capabilities;I)Landroid/content/ContentValues;
    .locals 8
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "cap"    # I

    .line 741
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, "capa":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 743
    .local v1, "time":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 744
    .local v2, "longFeatures":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 746
    .local v3, "longAvailableFeatures":Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 747
    .local v4, "values":Landroid/content/ContentValues;
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    if-nez v5, :cond_0

    goto :goto_0

    .line 752
    :cond_0
    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 753
    const-string v5, "data7"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v5, "data8"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v5, "data9"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v5, "data10"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 748
    :cond_1
    :goto_0
    const-string v5, "data3"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v5, "data4"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v5, "data5"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v5, "data6"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    :cond_2
    :goto_1
    iget v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setContentValues: longFeatures = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", longAvailableFeatures = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CapabilityStorage"

    invoke-static {v7, v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 760
    return-object v4
.end method

.method private setIsKor()V
    .locals 2

    .line 281
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const-string v0, "CapabilityStorage"

    const-string/jumbo v1, "setIsKor: true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mIsKor:Z

    .line 285
    :cond_0
    return-void
.end method

.method private setProjection()[Ljava/lang/String;
    .locals 10

    .line 654
    const/4 v0, 0x0

    .line 656
    .local v0, "projection":[Ljava/lang/String;
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUserId:I

    const-string v2, "data10"

    const-string v3, "data9"

    const/4 v4, 0x1

    const-string v5, "data6"

    const-string v6, "data5"

    const-string v7, "data2"

    const-string v8, "mimetype"

    if-nez v1, :cond_2

    .line 657
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v1

    const-string/jumbo v9, "raw_contact_id"

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 665
    :cond_0
    if-ne v1, v4, :cond_5

    .line 666
    filled-new-array {v9, v8, v3, v2, v7}, [Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_2

    .line 658
    :cond_1
    :goto_0
    filled-new-array {v9, v8, v6, v5, v7}, [Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_2

    .line 675
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v1

    const-string v9, "_id"

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    if-nez v1, :cond_3

    goto :goto_1

    .line 683
    :cond_3
    if-ne v1, v4, :cond_5

    .line 684
    filled-new-array {v9, v8, v3, v2, v7}, [Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_2

    .line 676
    :cond_4
    :goto_1
    filled-new-array {v9, v8, v6, v5, v7}, [Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 693
    :cond_5
    :goto_2
    return-object v0
.end method

.method private setRemoteUri()Landroid/net/Uri;
    .locals 2

    .line 644
    const/4 v0, 0x0

    .line 645
    .local v0, "remoteUri":Landroid/net/Uri;
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUserId:I

    if-nez v1, :cond_0

    .line 646
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 648
    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 650
    :goto_0
    return-object v0
.end method

.method private setSelection()Ljava/lang/String;
    .locals 2

    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, "selection":Ljava/lang/String;
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUserId:I

    if-nez v1, :cond_0

    .line 634
    const-string v0, "data1 = ? AND (mimetype = ? OR mimetype = ?)"

    goto :goto_0

    .line 637
    :cond_0
    const-string v0, "data1 = ? AND (mimetype = ? OR mimetype = ?)"

    .line 640
    :goto_0
    return-object v0
.end method

.method private update(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/sec/ims/options/Capabilities;",
            ">;)V"
        }
    .end annotation

    .line 220
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 222
    .local v0, "values":Landroid/content/ContentValues;
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Capabilities"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapabilityStorage"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/options/Capabilities;

    .line 225
    .local v2, "capex":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 227
    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->fillCapexInfo(Landroid/content/ContentValues;Lcom/sec/ims/options/Capabilities;)V

    .line 229
    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    const-string v5, "capabilities"

    if-ltz v3, :cond_0

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p1, v5, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 232
    .end local v3    # "where":Ljava/lang/String;
    goto :goto_1

    .line 233
    :cond_0
    invoke-virtual {p1, v5, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 234
    .local v3, "id":J
    invoke-virtual {v2, v3, v4}, Lcom/sec/ims/options/Capabilities;->setId(J)V

    .line 236
    .end local v2    # "capex":Lcom/sec/ims/options/Capabilities;
    .end local v3    # "id":J
    :goto_1
    goto :goto_0

    .line 237
    :cond_1
    return-void
.end method

.method private updateToContactDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V
    .locals 6
    .param p1, "rawContactId"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "capex"    # Lcom/sec/ims/options/Capabilities;

    .line 717
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateToContactDB: phoneNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 718
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setContentValues(Lcom/sec/ims/options/Capabilities;)Landroid/content/ContentValues;

    move-result-object v0

    .line 720
    .local v0, "values":Landroid/content/ContentValues;
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 722
    .local v1, "remoteUri":Landroid/net/Uri;
    nop

    .line 723
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 724
    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "vnd.android.cursor.item/rcs_data"

    aput-object v5, v3, v4

    .line 725
    const-string/jumbo v4, "raw_contact_id = ? AND data1 = ? AND mimetype = ?"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 731
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 732
    .local v2, "op":Landroid/content/ContentProviderOperation;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUpdater:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->tryPut(Landroid/content/ContentProviderOperation;)V

    .line 733
    return-void
.end method


# virtual methods
.method public deleteNonRcsDataFromContactDB()V
    .locals 7

    .line 809
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v1, "CapabilityStorage"

    const-string v2, "deleteNonRcsDataFromContactDB:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 810
    const/4 v0, 0x0

    .line 811
    .local v0, "numRows":I
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 813
    .local v2, "remoteUri":Landroid/net/Uri;
    const-string v3, "(((data5 = ? OR data5 = ?) AND data9 is null ) OR ((data9 = ? OR data9 = ?) AND data5 is null ) OR ((data5 = ? OR data5 = ?) AND (data9 = ? OR data9 = ?))) AND mimetype_id = (SELECT _id FROM mimetypes WHERE mimetype = ?)"

    .line 825
    .local v3, "sel":Ljava/lang/String;
    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 826
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    .line 827
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 828
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    .line 829
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 830
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v4, v6

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    .line 831
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    aput-object v5, v4, v6

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 832
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v4, v6

    const/16 v5, 0x8

    const-string/jumbo v6, "vnd.android.cursor.item/rcs_data"

    aput-object v6, v4, v5

    .line 835
    .local v4, "selArgs":[Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    .line 838
    goto :goto_0

    .line 836
    :catch_0
    move-exception v5

    .line 837
    .local v5, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 839
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteNonRcsDataFromContactDB: deleted rows = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const v1, 0x12040002

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "N,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 841
    return-void
.end method

.method public getAmountCapabilities()I
    .locals 6

    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "ret":I
    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "projection":[Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    const-string v3, "capabilities"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 102
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 103
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 105
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAmountCapabilities: Total "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " capabilities records"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CapabilityStorage"

    invoke-static {v5, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    return v0
.end method

.method public getAmountRcsCapabilities()I
    .locals 8

    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, "ret":I
    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "projection":[Ljava/lang/String;
    const-string v2, "avail_features <> ? AND avail_features <> ? AND avail_features <> ?"

    .line 118
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    .line 120
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 124
    .local v3, "selectionArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    const-string v5, "capabilities"

    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 126
    .local v4, "cursor":Landroid/database/Cursor;
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 127
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 129
    iget v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAmountRcsCapabilities: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " RCS capabilities records"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CapabilityStorage"

    invoke-static {v7, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 130
    return v0
.end method

.method public load()V
    .locals 17

    .line 288
    move-object/from16 v1, p0

    iget v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v2, "CapabilityStorage"

    const-string v3, "load"

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setIsKor()V

    .line 291
    const-string v4, "_id"

    const-string v5, "contact_id"

    const-string/jumbo v6, "uri"

    const-string v7, "available"

    const-string/jumbo v8, "timestamp"

    const-string v9, "display_name"

    const-string v10, "number"

    const-string/jumbo v11, "phone_id"

    const-string v12, "features"

    const-string v13, "avail_features"

    const-string v14, "ext_features"

    const-string/jumbo v15, "presence_support"

    const-string v16, "legacy_latching"

    filled-new-array/range {v4 .. v16}, [Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 307
    .local v3, "projection":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 308
    .local v4, "cursor":Landroid/database/Cursor;
    const-string/jumbo v5, "phone_id = ?"

    .line 309
    .local v5, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    iget v7, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 311
    .local v6, "selectionArg":[Ljava/lang/String;
    :try_start_0
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    const-string v9, "capabilities"

    invoke-virtual {v7, v9, v3, v5, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v4, v7

    .line 312
    iget v7, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " capabilities record."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v7, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 313
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_4

    .line 314
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 316
    :cond_0
    new-instance v7, Lcom/sec/ims/options/Capabilities;

    const-string/jumbo v9, "uri"

    .line 318
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 317
    invoke-static {v9}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v10

    const-string v9, "number"

    .line 319
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v9, "contact_id"

    .line 320
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v9, "_id"

    .line 321
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    int-to-long v13, v9

    const-string v9, "display_name"

    .line 322
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object v9, v7

    invoke-direct/range {v9 .. v15}, Lcom/sec/ims/options/Capabilities;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 325
    .local v7, "capex":Lcom/sec/ims/options/Capabilities;
    const-string v9, "features"

    .line 326
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 325
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Lcom/sec/ims/options/Capabilities;->setFeatures(J)V

    .line 327
    const-string v9, "avail_features"

    .line 328
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 327
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Lcom/sec/ims/options/Capabilities;->setAvailableFeatures(J)V

    .line 329
    const-string/jumbo v9, "phone_id"

    .line 330
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 329
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/sec/ims/options/Capabilities;->setPhoneId(I)V

    .line 334
    new-instance v9, Ljava/util/Date;

    const-string/jumbo v10, "timestamp"

    .line 335
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 334
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v9}, Lcom/sec/ims/options/Capabilities;->setTimestamp(Ljava/util/Date;)V

    .line 336
    const-string/jumbo v9, "presence_support"

    .line 337
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 336
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v0, :cond_1

    move v9, v0

    goto :goto_0

    :cond_1
    move v9, v8

    :goto_0
    invoke-virtual {v7, v9}, Lcom/sec/ims/options/Capabilities;->setPresenceSupport(Z)V

    .line 338
    const-string v9, "available"

    .line 339
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 338
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v0, :cond_2

    move v9, v0

    goto :goto_1

    :cond_2
    move v9, v8

    :goto_1
    invoke-virtual {v7, v9}, Lcom/sec/ims/options/Capabilities;->setAvailiable(Z)V

    .line 340
    const-string v9, "legacy_latching"

    .line 341
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 340
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v0, :cond_3

    move v9, v0

    goto :goto_2

    :cond_3
    move v9, v8

    :goto_2
    invoke-virtual {v7, v9}, Lcom/sec/ims/options/Capabilities;->setLegacyLatching(Z)V

    .line 343
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mCapabilitiesCache:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-virtual {v9, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->add(Lcom/sec/ims/options/Capabilities;)V

    .line 344
    .end local v7    # "capex":Lcom/sec/ims/options/Capabilities;
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    .line 349
    :cond_4
    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "persist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    nop

    .end local v0    # "e":Landroid/database/SQLException;
    :goto_3
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 350
    nop

    .line 352
    iget v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v7, "load done."

    invoke-static {v2, v0, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 353
    return-void

    .line 349
    :goto_4
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 350
    throw v0
.end method

.method public persist()V
    .locals 11

    .line 134
    const-string/jumbo v0, "persist: SQLException: "

    const-string/jumbo v1, "persist: SQLiteDiskIOException: "

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v3, "CapabilityStorage"

    const-string/jumbo v4, "persist: start"

    invoke-static {v3, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mCapabilitiesCache:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getUpdatedUriList()Ljava/util/List;

    move-result-object v2

    .line 137
    .local v2, "urisToUpdate":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mCapabilitiesCache:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getTrashedUriList()Ljava/util/List;

    move-result-object v4

    .line 138
    .local v4, "urisToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v5, "capListToUpdate":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    const/4 v6, 0x0

    .line 142
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_6

    move-object v6, v7

    .line 149
    nop

    .line 152
    :try_start_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    :goto_0
    goto :goto_1

    .line 157
    :catch_0
    move-exception v7

    .line 158
    .local v7, "e":Landroid/database/SQLException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 155
    .end local v7    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v7

    .line 156
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "persist: SQLiteException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    goto :goto_0

    .line 153
    :catch_2
    move-exception v7

    .line 154
    .local v7, "e":Landroid/database/sqlite/SQLiteDatabaseLockedException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "persist: SQLiteDatabaseLockedException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabaseLockedException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "e":Landroid/database/sqlite/SQLiteDatabaseLockedException;
    goto :goto_0

    .line 162
    :goto_1
    if-eqz v2, :cond_2

    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 163
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/ims/util/ImsUri;

    .line 164
    .local v8, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mCapabilitiesCache:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-virtual {v9, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v9

    .line 165
    .local v9, "capex":Lcom/sec/ims/options/Capabilities;
    if-eqz v9, :cond_0

    .line 166
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 168
    :cond_0
    const-string/jumbo v10, "persist: not found in cache."

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v8    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v9    # "capex":Lcom/sec/ims/options/Capabilities;
    :goto_3
    goto :goto_2

    .line 171
    :cond_1
    invoke-direct {p0, v6, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    goto :goto_4

    .line 184
    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 181
    :catch_3
    move-exception v1

    goto :goto_6

    .line 179
    :catch_4
    move-exception v0

    goto :goto_7

    .line 177
    :catch_5
    move-exception v0

    goto :goto_8

    .line 173
    :cond_2
    :goto_4
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 174
    invoke-direct {p0, v6, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->remove(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 176
    :cond_3
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    nop

    :goto_5
    invoke-direct {p0, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 185
    goto :goto_9

    .line 182
    .local v1, "e":Landroid/database/SQLException;
    :goto_6
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    nop

    .end local v1    # "e":Landroid/database/SQLException;
    goto :goto_5

    .line 180
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "persist: SQLiteFullException: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    nop

    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_5

    .line 178
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :goto_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    nop

    .end local v0    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    goto :goto_5

    .line 187
    :goto_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 188
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string/jumbo v1, "persist: end"

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 189
    return-void

    .line 184
    :goto_a
    invoke-direct {p0, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 185
    throw v0

    .line 146
    :catch_6
    move-exception v0

    .line 147
    .local v0, "e":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "persist: SQLiteDatabaseCorruptException: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 143
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_7
    move-exception v0

    .line 144
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public persistToContactDB(Lcom/sec/ims/options/Capabilities;Z)V
    .locals 11
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "isNotifyUpdated"    # Z

    .line 490
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mIsKor:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mNeedResetRcsData:Z

    if-eqz v0, :cond_0

    .line 491
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mNeedResetRcsData:Z

    .line 492
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->deleteAllRcsDataFromContactDB()V

    .line 494
    :cond_0
    const-string v0, "CapabilityStorage"

    if-nez p1, :cond_1

    .line 495
    const-string/jumbo v1, "persistToContactDB: capex is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void

    .line 499
    :cond_1
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "persistToContactDB: isNotifyUpdated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 501
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUserId:I

    .line 504
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 506
    .local v2, "normalizedNumber":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/phone_lookup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 507
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 508
    .local v3, "phoneLookupUri":Landroid/net/Uri;
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10

    .line 509
    .local v10, "remoteUri":Landroid/net/Uri;
    iget v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persistToContactDB: remoteUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 511
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "number"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    .local v4, "cursor":Landroid/database/Cursor;
    if-nez v4, :cond_3

    .line 516
    :try_start_1
    const-string/jumbo v1, "persistToContactDB: fail to read contact db"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    if-eqz v4, :cond_2

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 517
    :cond_2
    return-void

    .line 519
    :cond_3
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_5

    .line 520
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string/jumbo v5, "persistToContactDB: no contact found"

    invoke-static {v0, v1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 532
    if-eqz v4, :cond_4

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 521
    :cond_4
    return-void

    .line 524
    :cond_5
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v0, "phoneNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 526
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 527
    .local v5, "phoneNumber":Ljava/lang/String;
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 528
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-direct {p0, v5, v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->putCapabilityToContactDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 532
    .end local v0    # "phoneNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "phoneNumber":Ljava/lang/String;
    :cond_7
    if-eqz v4, :cond_8

    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 534
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_8
    goto :goto_2

    .line 511
    .restart local v4    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_9

    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "normalizedNumber":Ljava/lang/String;
    .end local v3    # "phoneLookupUri":Landroid/net/Uri;
    .end local v10    # "remoteUri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;
    .end local p1    # "capex":Lcom/sec/ims/options/Capabilities;
    .end local p2    # "isNotifyUpdated":Z
    :cond_9
    :goto_1
    throw v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 532
    .end local v4    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "normalizedNumber":Ljava/lang/String;
    .restart local v3    # "phoneLookupUri":Landroid/net/Uri;
    .restart local v10    # "remoteUri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;
    .restart local p1    # "capex":Lcom/sec/ims/options/Capabilities;
    .restart local p2    # "isNotifyUpdated":Z
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 535
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2
    return-void
.end method

.method public reset()V
    .locals 5

    .line 192
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v1, "CapabilityStorage"

    const-string/jumbo v2, "reset:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    move-object v0, v2

    .line 197
    const-string v2, "capabilities"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    nop

    .line 203
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 205
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mIsKor:Z

    if-eqz v1, :cond_0

    .line 206
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mNeedResetRcsData:Z

    .line 208
    :cond_0
    return-void

    .line 198
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reset: SQLiteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method
