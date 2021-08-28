.class public Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;
.super Landroid/content/ContentProvider;
.source "RcsPreferencesProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sec.ims.android.rcs"

.field private static final KEY_ENRICHED_CALLING:Ljava/lang/String; = "rcs_enriched_calling"

.field private static final KEY_MASTER_SWICH_VISIBILITY:Ljava/lang/String; = "master_switch"

.field private static final KEY_PERMANENT_DISABLE:Ljava/lang/String; = "permanent_disable_state"

.field private static final KEY_PERMANENT_DISABLE_AVAILABILITY:Ljava/lang/String; = "permanent_disable_availibility"

.field private static final KEY_RCSPROFILE:Ljava/lang/String; = "rcsprofile"

.field private static final KEY_RCS_ENABLED:Ljava/lang/String; = "rcs_enabled"

.field private static final KEY_RCS_NOTIFICATION_SETTING:Ljava/lang/String; = "rcs_connection_preference"

.field private static final KEY_REGISTRATION_STATUS:Ljava/lang/String; = "registration_status"

.field private static final KEY_STATIC_ENABLE_RCS:Ljava/lang/String; = "EnableRCS"

.field private static final KEY_STATIC_ENABLE_RCSCHAT:Ljava/lang/String; = "EnableRCSchat"

.field private static final KEY_SUPPORT_DUAL_RCS:Ljava/lang/String; = "support_dual_rcs"

.field private static final KEY_SUPPORT_DUAL_RCS_SETTINGS:Ljava/lang/String; = "support_dual_rcs_settings"

.field private static final KEY_SUPPORT_DUAL_RCS_SIM1:Ljava/lang/String; = "support_dual_rcs_sim1"

.field private static final KEY_SUPPORT_DUAL_RCS_SIM2:Ljava/lang/String; = "support_dual_rcs_sim2"

.field private static final KEY_USER_ALIAS:Ljava/lang/String; = "user_alias"

.field private static final KEY_VANILLA_APPLIED:Ljava/lang/String; = "vanilla_applied"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MATCH_ENRICHED_CALLING:I = 0xb

.field private static final MATCH_HOME_NETWORK:I = 0x2

.field private static final MATCH_PERMANENT_DISABLE:I = 0x4

.field private static final MATCH_PERMANENT_DISABLE_AVAILABILITY:I = 0x6

.field private static final MATCH_RCSPROFILE:I = 0x8

.field private static final MATCH_RCS_ENABLED_STATIC:I = 0xa

.field private static final MATCH_REGISTRATION:I = 0x7

.field private static final MATCH_ROAMING:I = 0x3

.field private static final MATCH_SETTINGS:I = 0x1

.field private static final MATCH_SUPPORT_DUAL_RCS:I = 0x9

.field private static final MATCH_SUPPORT_DUAL_RCS_SETTINGS:I = 0xc

.field private static final MATCH_USER_ALIAS:I = 0x5

.field private static final TABLE_ENRICHED_CALLING:Ljava/lang/String; = "rcs_enriched_calling"

.field private static final TABLE_HOME_NETWORK:Ljava/lang/String; = "home_network"

.field private static final TABLE_PERMANENT_DISALBE:Ljava/lang/String; = "permanent_disable_state"

.field private static final TABLE_PERMANENT_DISALBE_AVAILABILITY:Ljava/lang/String; = "permanent_disable_availibility"

.field private static final TABLE_PREFERENCES:Ljava/lang/String; = "preferences"

.field private static final TABLE_RCSPROFILE:Ljava/lang/String; = "rcsprofile"

.field private static final TABLE_RCS_ENABLED_STATIC:Ljava/lang/String; = "rcs_enabled_static"

.field private static final TABLE_REGISTRATION:Ljava/lang/String; = "registration"

.field private static final TABLE_ROAMING:Ljava/lang/String; = "roaming"

.field private static final TABLE_SUPPORT_DUAL_RCS:Ljava/lang/String; = "support_dual_rcs"

.field private static final TABLE_SUPPORT_DUAL_RCS_SETTINGS:Ljava/lang/String; = "support_dual_rcs_settings"

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 36
    const-class v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    .line 83
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    const-string/jumbo v2, "preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v5, "com.sec.ims.android.rcs"

    invoke-virtual {v0, v5, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    sget-object v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    sget-object v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "home_network"

    const/4 v2, 0x2

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    sget-object v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "roaming"

    const/4 v2, 0x3

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    sget-object v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "permanent_disable_state"

    const/4 v2, 0x4

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    sget-object v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "permanent_disable_availibility"

    const/4 v2, 0x6

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    sget-object v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "registration"

    const/4 v2, 0x7

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    sget-object v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "rcsprofile"

    const/16 v2, 0x8

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    sget-object v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "support_dual_rcs"

    const/16 v2, 0x9

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    sget-object v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "rcs_enabled_static"

    const/16 v2, 0xa

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    sget-object v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "rcs_enriched_calling"

    const/16 v2, 0xb

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    sget-object v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "support_dual_rcs_settings"

    const/16 v2, 0xc

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createMultiValueCursor([Ljava/lang/String;[Ljava/lang/Integer;)Landroid/database/Cursor;
    .locals 2
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Integer;

    .line 291
    new-instance v0, Landroid/database/MatrixCursor;

    array-length v1, p1

    invoke-direct {v0, p1, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 292
    .local v0, "c":Landroid/database/MatrixCursor;
    invoke-virtual {v0, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 293
    return-object v0
.end method

.method private createMultiValueCursor([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .line 297
    new-instance v0, Landroid/database/MatrixCursor;

    array-length v1, p1

    invoke-direct {v0, p1, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 298
    .local v0, "c":Landroid/database/MatrixCursor;
    invoke-virtual {v0, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 299
    return-object v0
.end method

.method private createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .line 271
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 274
    .local v0, "c":Landroid/database/MatrixCursor;
    new-array v1, v1, [Ljava/lang/Integer;

    aput-object p2, v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 277
    return-object v0
.end method

.method private createSingleValueCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 281
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 284
    .local v0, "c":Landroid/database/MatrixCursor;
    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 287
    return-object v0
.end method

.method private getRcsEnabledStatic(I)[Ljava/lang/String;
    .locals 16
    .param p1, "phoneId"    # I

    .line 346
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 347
    .local v2, "isEnableRcs":Z
    const/4 v3, 0x0

    .line 350
    .local v3, "isEnableRcsChat":Z
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSimMobilityFeatureEnabled()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    const-string v7, ", rcschat = "

    const-string/jumbo v8, "true"

    const/4 v9, 0x0

    const-string v10, "false"

    if-eqz v4, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 351
    iget-object v4, v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    .line 352
    .local v4, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 353
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/ims/settings/ImsProfile;

    .line 354
    .local v12, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcs()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 355
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcs()Z

    move-result v2

    .line 356
    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcsChat()Z

    move-result v3

    .line 357
    goto :goto_1

    .line 359
    .end local v12    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_0
    goto :goto_0

    .line 362
    :cond_1
    :goto_1
    sget-object v11, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getRcsEnabledStatic: SimMobility, rcs = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-array v6, v6, [Ljava/lang/String;

    .line 365
    if-eqz v2, :cond_2

    move-object v7, v8

    goto :goto_2

    :cond_2
    move-object v7, v10

    :goto_2
    aput-object v7, v6, v9

    .line 366
    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move-object v8, v10

    :goto_3
    aput-object v8, v6, v5

    .line 364
    return-object v6

    .line 371
    .end local v4    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    :cond_4
    sget-object v4, Lcom/sec/internal/constants/Mno;->MOCK_MNO_PROPERTY:Ljava/lang/String;

    const-string v11, ""

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, "operator":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 373
    iget-object v11, v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    .line 374
    const-string/jumbo v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 375
    .local v11, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 377
    .end local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    sget-object v11, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getRcsEnabledStatic: operator = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 380
    sget-object v5, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    const-string v6, "getRcsEnabledStatic: operator is empty, rcs = false, rcschat = false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    filled-new-array {v10, v10}, [Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 386
    :cond_6
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v11

    .line 387
    .local v11, "mno":Lcom/sec/internal/constants/Mno;
    invoke-static {v11}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 388
    iget-object v7, v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledinSettings(Landroid/content/Context;I)Z

    move-result v2

    .line 389
    move v3, v2

    goto :goto_4

    .line 391
    :cond_7
    invoke-static {v4, v1}, Lcom/sec/internal/ims/util/CscParser;->getCscImsSetting(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v12

    .line 392
    .local v12, "cscSettings":Landroid/content/ContentValues;
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroid/content/ContentValues;->size()I

    move-result v13

    if-lez v13, :cond_8

    .line 393
    const-string v13, "EnableRCS"

    .line 394
    .local v13, "enableRcs":Ljava/lang/String;
    const-string v14, "EnableRCSchat"

    .line 396
    .local v14, "enableRcsChat":Ljava/lang/String;
    invoke-static {v12, v13, v9}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    .line 397
    invoke-static {v12, v14, v9}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v3

    .line 398
    sget-object v15, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRcsEnabledStatic: Customer, rcs = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .end local v13    # "enableRcs":Ljava/lang/String;
    .end local v14    # "enableRcsChat":Ljava/lang/String;
    goto :goto_4

    .line 400
    :cond_8
    sget-object v5, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    const-string v7, "getRcsEnabledStatic: cscSettings is null, rcs = false, rcschat = false"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .end local v12    # "cscSettings":Landroid/content/ContentValues;
    :goto_4
    new-array v5, v6, [Ljava/lang/String;

    .line 404
    if-eqz v2, :cond_9

    move-object v6, v8

    goto :goto_5

    :cond_9
    move-object v6, v10

    :goto_5
    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 405
    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    move-object v8, v10

    :goto_6
    const/4 v6, 0x1

    aput-object v8, v5, v6

    .line 403
    return-object v5
.end method

.method private getSupportDualRcs()[Ljava/lang/Integer;
    .locals 7

    .line 334
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    .line 335
    .local v0, "supportDualRcs":Z
    iget-object v1, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v1

    .line 336
    .local v1, "supportDualRcsSim1":Z
    iget-object v3, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v3

    .line 338
    .local v3, "supportDualRcsSim2":Z
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Integer;

    .line 339
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 340
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v4

    const/4 v2, 0x2

    .line 341
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    .line 338
    return-object v5
.end method

.method private getSupportDualRcsSettings()I
    .locals 1

    .line 414
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result v0

    return v0
.end method

.method private isRcsRegistered(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 326
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isRcsRegistered(I)Z

    move-result v0

    return v0
.end method

.method private queryEnrichedCalling(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 410
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledEnrichedCalling(I)Z

    move-result v0

    return v0
.end method

.method private queryUserAlias(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .line 310
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 311
    .local v0, "imModule":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getUserAliasFromPreference(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 314
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method private readCurrentSettingsValues(I)[Ljava/lang/Integer;
    .locals 7
    .param p1, "phoneId"    # I

    .line 253
    const-string/jumbo v0, "rcs_user_setting"

    invoke-static {v0, p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result v0

    .line 254
    .local v0, "isEnabledByUser":Z
    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->isRcsEnabledByPhoneId(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 256
    .local v1, "isVanillaApplied":Z
    const/4 v3, 0x0

    .line 258
    .local v3, "isMainSwitchVisible":Z
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isMainSwitchVisible(Landroid/content/Context;I)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 261
    goto :goto_0

    .line 259
    :catch_0
    move-exception v4

    .line 260
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 263
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Integer;

    .line 264
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 265
    if-eqz v1, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    move v5, v6

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    .line 266
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move v2, v6

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    .line 263
    return-object v4
.end method

.method private updateRCSSetting(ZI)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "phoneId"    # I

    .line 330
    invoke-static {p1, p2}, Lcom/sec/internal/ims/registry/ImsRegistry;->enableRcsByPhoneId(ZI)V

    .line 331
    return-void
.end method

.method private updateUserAlias(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .line 303
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 304
    .local v0, "imModule":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    if-eqz v0, :cond_0

    .line 305
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->setUserAlias(ILjava/lang/String;)V

    .line 307
    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;

    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 147
    sget-object v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 148
    .local v0, "code":I
    sget-object v1, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "query ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] match ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v1, 0x0

    .line 151
    .local v1, "phoneId":I
    const-string/jumbo v2, "persist.radio.multisim.config"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dsds"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/extensions/Extensions$SubscriptionManager;->getDefaultDataPhoneId(Landroid/telephony/SubscriptionManager;)I

    move-result v1

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "simslot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    .line 159
    :cond_1
    const/4 v2, 0x0

    .line 160
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "rcs_connection_preference"

    packed-switch v0, :pswitch_data_0

    .line 211
    sget-object v3, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "query: uri not implemented: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 208
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->getSupportDualRcsSettings()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "support_dual_rcs_settings"

    invoke-direct {p0, v4, v3}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v2

    .line 209
    goto/16 :goto_0

    .line 205
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->queryEnrichedCalling(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "rcs_enriched_calling"

    invoke-direct {p0, v4, v3}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v2

    .line 206
    goto/16 :goto_0

    .line 199
    :pswitch_2
    const-string v3, "EnableRCS"

    const-string v4, "EnableRCSchat"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->getRcsEnabledStatic(I)[Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createMultiValueCursor([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 203
    goto/16 :goto_0

    .line 192
    :pswitch_3
    const-string/jumbo v3, "support_dual_rcs"

    const-string/jumbo v4, "support_dual_rcs_sim1"

    const-string/jumbo v5, "support_dual_rcs_sim2"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-direct {p0}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->getSupportDualRcs()[Ljava/lang/Integer;

    move-result-object v4

    .line 192
    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createMultiValueCursor([Ljava/lang/String;[Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v2

    .line 197
    goto :goto_0

    .line 187
    :pswitch_4
    const-string v3, ""

    .line 188
    .local v3, "rcsprofile":Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object v3

    .line 189
    const-string/jumbo v4, "rcsprofile"

    invoke-direct {p0, v4, v3}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 190
    goto :goto_0

    .line 184
    .end local v3    # "rcsprofile":Ljava/lang/String;
    :pswitch_5
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->isRcsRegistered(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "registration_status"

    invoke-direct {p0, v4, v3}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v2

    .line 185
    goto :goto_0

    .line 178
    :pswitch_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "permanent_disable_availibility"

    invoke-direct {p0, v4, v3}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v2

    .line 179
    goto :goto_0

    .line 181
    :pswitch_7
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->queryUserAlias(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "user_alias"

    invoke-direct {p0, v4, v3}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 182
    goto :goto_0

    .line 175
    :pswitch_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "permanent_disable_state"

    invoke-direct {p0, v4, v3}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v2

    .line 176
    goto :goto_0

    .line 172
    :pswitch_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v5, v3}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v2

    .line 173
    goto :goto_0

    .line 169
    :pswitch_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v5, v3}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v2

    .line 170
    goto :goto_0

    .line 162
    :pswitch_b
    const-string/jumbo v3, "rcs_enabled"

    const-string/jumbo v4, "vanilla_applied"

    const-string v5, "master_switch"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->readCurrentSettingsValues(I)[Ljava/lang/Integer;

    move-result-object v4

    .line 162
    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createMultiValueCursor([Ljava/lang/String;[Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v2

    .line 167
    nop

    .line 213
    :goto_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;

    .line 218
    sget-object v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "result":I
    const/4 v1, 0x0

    .line 222
    .local v1, "phoneId":I
    const-string/jumbo v2, "persist.radio.multisim.config"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dsds"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/extensions/Extensions$SubscriptionManager;->getDefaultDataPhoneId(Landroid/telephony/SubscriptionManager;)I

    move-result v1

    .line 226
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "simslot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    .line 230
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    .line 247
    sget-object v2, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update: uri not implemented: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 239
    :cond_2
    const-string/jumbo v2, "user_alias"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 240
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "alias":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User alias: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->updateUserAlias(ILjava/lang/String;)V

    .line 243
    const/4 v0, 0x1

    .line 244
    .end local v2    # "alias":Ljava/lang/String;
    goto :goto_1

    .line 232
    :cond_3
    const-string/jumbo v2, "rcs_enabled"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 233
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 234
    .local v2, "enabled":Z
    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->updateRCSSetting(ZI)V

    .line 235
    const/4 v0, 0x1

    .line 249
    .end local v2    # "enabled":Z
    :cond_5
    :goto_1
    return v0
.end method
