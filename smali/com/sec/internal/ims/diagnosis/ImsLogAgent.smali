.class public Lcom/sec/internal/ims/diagnosis/ImsLogAgent;
.super Landroid/content/ContentProvider;
.source "ImsLogAgent.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.imsservice.log"

.field private static final DMUI_LOCK:Ljava/lang/Object;

.field private static final DRCS_KEY_RCS_USER_SETTING:Ljava/lang/String; = "RUSS"

.field private static final DRCS_LOCK:Ljava/lang/Object;

.field private static final DRPT_LOCK:Ljava/lang/Object;

.field private static final INTENT_ACTION_BIG_DATA_INFO:Ljava/lang/String; = "com.samsung.intent.action.BIG_DATA_INFO"

.field private static final INTENT_ACTION_DAILY_REPORT_EXPIRED:Ljava/lang/String; = "com.sec.imsservice.ACTION_DAILY_REPORT_EXPIRED"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PERIOD_OF_DAILY_REPORT:I = 0x5265c00

.field private static final PSCI_LOCK:Ljava/lang/Object;

.field private static final REGI_LOCK:Ljava/lang/Object;

.field private static final SIMI_LOCK:Ljava/lang/Object;

.field private static final UNKNOWN_LOCK:Ljava/lang/Object;

.field private static final URI_TYPE_SEND_LOG:I = 0x1

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDailyReportExpiry:Landroid/app/PendingIntent;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 55
    const-class v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->UNKNOWN_LOCK:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->REGI_LOCK:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->PSCI_LOCK:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->SIMI_LOCK:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->DMUI_LOCK:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->DRPT_LOCK:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->DRCS_LOCK:Ljava/lang/Object;

    .line 79
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->sUriMatcher:Landroid/content/UriMatcher;

    .line 83
    const-string v1, "com.sec.imsservice.log"

    const-string/jumbo v2, "send/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    .line 77
    iput-object v0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/diagnosis/ImsLogAgent;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/diagnosis/ImsLogAgent;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->onCsCallInfoReceived(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/diagnosis/ImsLogAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/diagnosis/ImsLogAgent;

    .line 54
    invoke-direct {p0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->onDailyReport()V

    return-void
.end method

.method private declared-synchronized getFeatureLock(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    monitor-enter p0

    .line 269
    :try_start_0
    const-string v0, "REGI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->REGI_LOCK:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 271
    .end local p0    # "this":Lcom/sec/internal/ims/diagnosis/ImsLogAgent;
    :cond_0
    :try_start_1
    const-string v0, "PSCI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    sget-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->PSCI_LOCK:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 273
    :cond_1
    :try_start_2
    const-string v0, "SIMI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    sget-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->SIMI_LOCK:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 275
    :cond_2
    :try_start_3
    const-string v0, "DMUI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    sget-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->DMUI_LOCK:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 277
    :cond_3
    :try_start_4
    const-string v0, "DRPT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    sget-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->DRPT_LOCK:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 279
    :cond_4
    :try_start_5
    const-string v0, "DRCS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 280
    sget-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->DRCS_LOCK:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 282
    :cond_5
    :try_start_6
    sget-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->UNKNOWN_LOCK:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    .line 268
    .end local p1    # "feature":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getFeatureName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    monitor-enter p0

    .line 251
    :try_start_0
    const-string v0, "REGI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "REGI"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 253
    .end local p0    # "this":Lcom/sec/internal/ims/diagnosis/ImsLogAgent;
    :cond_0
    :try_start_1
    const-string v0, "PSCI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    const-string v0, "PSCI"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 255
    :cond_1
    :try_start_2
    const-string v0, "SIMI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    const-string v0, "SIMI"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 257
    :cond_2
    :try_start_3
    const-string v0, "DMUI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    const-string v0, "DMUI"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 259
    :cond_3
    :try_start_4
    const-string v0, "DRPT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 260
    const-string v0, "DRPT"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 261
    :cond_4
    :try_start_5
    const-string v0, "DRCS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 262
    const-string v0, "DRCS"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 264
    :cond_5
    :try_start_6
    const-string v0, "UNKNOWN"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    .line 250
    .end local p1    # "feature":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getPeriodForDailyReport()I
    .locals 2

    .line 242
    const-string/jumbo v0, "persist.ims.debug.period.dr"

    const v1, 0x5265c00

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 244
    .local v0, "period":I
    if-gtz v0, :cond_0

    .line 245
    const v0, 0x5265c00

    .line 247
    :cond_0
    return v0
.end method

.method private isSmsAppDefault()Z
    .locals 6

    .line 585
    sget-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    const-string v1, "get default sms app."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v0, 0x0

    .line 588
    .local v0, "defaultSmsApp":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 591
    goto :goto_0

    .line 589
    :catch_0
    move-exception v1

    .line 590
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getDefaultSmsPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v0, :cond_0

    .line 594
    sget-object v1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    const-string v2, "default sms app is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v1, 0x0

    return v1

    .line 597
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/os/PackageUtils;->getMsgAppPkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, "samsungPackage":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 599
    .local v2, "result":Z
    sget-object v3, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "default sms app:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " samsungPackage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    sget-object v3, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDefaultMessageAppInUse : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return v2
.end method

.method private normalizeLog(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .param p1, "log"    # Lorg/json/JSONObject;

    .line 493
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "rtn":Ljava/lang/String;
    const-string v1, "\\{"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    const-string v3, "^"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    return-object v0
.end method

.method private onCsCallInfoReceived(IILjava/lang/String;)V
    .locals 16
    .param p1, "phoneId"    # I
    .param p2, "feature"    # I
    .param p3, "data"    # Ljava/lang/String;

    .line 503
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    const/4 v0, 0x1

    .line 578
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 503
    if-eqz v3, :cond_0

    if-eq v3, v0, :cond_0

    .line 504
    sget-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCsCallInfoReceived : ignore except CEND/DROP! received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-void

    .line 508
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    .line 509
    :cond_1
    const-string v5, "\""

    const-string v6, ""

    move-object/from16 v7, p3

    invoke-virtual {v7, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 510
    .local v5, "bigDataInfo":Ljava/lang/String;
    sget-object v6, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCsCallInfoReceived: remove quotes ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 513
    .local v6, "tparse":[Ljava/lang/String;
    const/4 v8, -0x1

    .line 514
    .local v8, "callType":I
    const/4 v9, -0x1

    .line 515
    .local v9, "callState":I
    const/4 v10, -0x1

    .line 517
    .local v10, "callDropEvent":I
    array-length v11, v6

    if-ge v11, v0, :cond_2

    .line 518
    sget-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onCsCallInfoReceived: No data"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-void

    .line 523
    :cond_2
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    :try_start_0
    array-length v12, v6

    if-ge v11, v12, :cond_6

    .line 524
    aget-object v12, v6, v11

    const-string v13, "Ctyp"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, ":"

    if-eqz v12, :cond_3

    .line 525
    :try_start_1
    aget-object v12, v6, v11

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v0

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v8, v12

    goto :goto_1

    .line 526
    :cond_3
    aget-object v12, v6, v11

    const-string v14, "Csta"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 527
    aget-object v12, v6, v11

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v0

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v9, v12

    goto :goto_1

    .line 528
    :cond_4
    aget-object v12, v6, v11

    const-string v14, "Etyp"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 529
    aget-object v12, v6, v11

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v0

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move v10, v12

    .line 523
    :cond_5
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 535
    .end local v11    # "i":I
    :cond_6
    nop

    .line 537
    if-lt v8, v0, :cond_b

    const/4 v11, 0x3

    if-gt v8, v11, :cond_b

    .line 540
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 541
    .local v12, "csDRTP":Landroid/content/ContentValues;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 543
    .local v13, "csPSCI":Landroid/content/ContentValues;
    if-ne v3, v0, :cond_a

    .line 550
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "PSCS"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 551
    const-string v14, "TYPE"

    if-ne v8, v11, :cond_7

    .line 552
    const/4 v15, 0x7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 554
    :cond_7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 557
    :goto_2
    const-string v14, "STAT"

    if-ne v9, v0, :cond_8

    .line 558
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v13, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 559
    const-string v11, "CSMO"

    invoke-virtual {v12, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 560
    :cond_8
    const/4 v11, 0x2

    if-ne v9, v11, :cond_9

    .line 561
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v13, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 562
    const-string v11, "CSMT"

    invoke-virtual {v12, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 564
    :cond_9
    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v13, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 566
    :goto_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "FLCD"

    invoke-virtual {v13, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 569
    const-string v11, "PSCI"

    const/4 v14, 0x0

    invoke-direct {v1, v2, v11, v13, v14}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->storeLogs(ILjava/lang/String;Landroid/content/ContentValues;I)Z

    .line 570
    iget-object v14, v1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v2, v14, v11}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->requestToSendStoredLog(ILandroid/content/Context;Ljava/lang/String;)V

    .line 571
    sget-object v11, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onCsCallInfoReceived: send PSCI: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const-string v11, "CEFC"

    invoke-virtual {v12, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 578
    :cond_a
    const-string v11, "CETC"

    invoke-virtual {v12, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 579
    sget-object v4, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onCsCallInfoReceived: storeLogs: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v4, "DRPT"

    invoke-direct {v1, v2, v4, v12, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->storeLogs(ILjava/lang/String;Landroid/content/ContentValues;I)Z

    .line 582
    .end local v12    # "csDRTP":Landroid/content/ContentValues;
    .end local v13    # "csPSCI":Landroid/content/ContentValues;
    :cond_b
    return-void

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCsCallInfoReceived: NumberFormatException! "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-void
.end method

.method private onDailyReport()V
    .locals 5

    .line 214
    const-string v0, "DRCS"

    sget-object v1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onDailyReport"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mDailyReportExpiry:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 217
    iget-object v2, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 218
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mDailyReportExpiry:Landroid/app/PendingIntent;

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "DRPT"

    const-string v4, "next_drpt_schedule"

    invoke-static {v2, v1, v3, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->remove(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->sendStoredLog(ILjava/lang/String;)I

    .line 226
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->sendStoredLog(ILjava/lang/String;)I

    .line 228
    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->getCommonHeader(Landroid/content/Context;I)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 229
    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->sendStoredLog(ILjava/lang/String;)I

    .line 230
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->sendStoredLog(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->scheduleDailyReport()V

    .line 238
    goto :goto_1

    .line 237
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendLogToAgent: Exception - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 239
    :goto_1
    return-void

    .line 237
    :goto_2
    invoke-direct {p0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->scheduleDailyReport()V

    .line 238
    throw v0
.end method

.method private scheduleDailyReport()V
    .locals 12

    .line 463
    iget-object v0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mDailyReportExpiry:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 464
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "DRPT"

    invoke-static {v1, v0, v2, v1, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 469
    .local v0, "spDrpt":Landroid/content/SharedPreferences;
    const-wide/16 v2, 0x0

    .line 470
    .local v2, "delay":J
    const-string v4, "next_drpt_schedule"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 471
    .local v7, "scheduledTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 473
    .local v9, "curTime":J
    cmp-long v11, v7, v5

    if-lez v11, :cond_1

    cmp-long v11, v7, v9

    if-gtz v11, :cond_1

    .line 474
    sget-object v4, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "scheduleDailyReport: DRPT timer is expired. Sending it now."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 476
    :cond_1
    cmp-long v5, v7, v5

    if-nez v5, :cond_2

    .line 477
    invoke-direct {p0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->getPeriodForDailyReport()I

    move-result v5

    int-to-long v5, v5

    add-long v7, v9, v5

    .line 480
    :cond_2
    sub-long v2, v7, v9

    .line 481
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 484
    :goto_0
    sget-object v4, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "scheduleDailyReport: delay ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "] scheduled time ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.imsservice.ACTION_DAILY_REPORT_EXPIRED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v4, "i":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    const/high16 v6, 0x8000000

    invoke-static {v5, v1, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mDailyReportExpiry:Landroid/app/PendingIntent;

    .line 489
    iget-object v5, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v5, v1, v2, v3}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 490
    return-void
.end method

.method private sendLogs(ILjava/lang/String;Landroid/content/ContentValues;)Z
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "cv"    # Landroid/content/ContentValues;

    .line 287
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->getFeatureLock(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 288
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendLogs: feature ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {p3}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendLogs: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] is null or empty!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 292
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 295
    :cond_0
    const/4 v1, 0x0

    .line 297
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    .line 300
    iget-object v2, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->getCommonHeader(Landroid/content/Context;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 301
    .local v2, "commonHeader":Landroid/content/ContentValues;
    invoke-virtual {v2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 302
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    nop

    .end local v4    # "key":Ljava/lang/String;
    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 307
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 308
    .local v5, "obj":Ljava/lang/Object;
    if-nez v5, :cond_2

    .line 309
    iget-object v6, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendLogs: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] is null!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 310
    goto :goto_1

    .line 313
    :cond_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    nop

    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "obj":Ljava/lang/Object;
    goto :goto_1

    .line 317
    .end local v2    # "commonHeader":Landroid/content/ContentValues;
    :cond_3
    goto :goto_2

    .line 315
    :catch_0
    move-exception v2

    .line 316
    .local v2, "e":Lorg/json/JSONException;
    :try_start_2
    sget-object v3, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendLogs: JSONException! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_2
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->normalizeLog(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "log":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendLogs: send ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0, p2, v2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->sendLogToHqmManager(Ljava/lang/String;Ljava/lang/String;)Z

    .line 323
    const-string v3, "DRPT"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 324
    iget-object v3, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.sec.imsservice.log/log/drpt"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 326
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "log":Ljava/lang/String;
    :cond_4
    monitor-exit v0

    .line 328
    const/4 v0, 0x1

    return v0

    .line 326
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private sendStoredLog(ILjava/lang/String;)I
    .locals 12
    .param p1, "phoneId"    # I
    .param p2, "uriLastSeg"    # Ljava/lang/String;

    .line 341
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->getFeatureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "feature":Ljava/lang/String;
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendStoredLog: Invalid feature ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 344
    return v2

    .line 347
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendStoredLog: feature ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 349
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->getFeatureLock(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 350
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v0, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 351
    .local v3, "logStorage":Landroid/content/SharedPreferences;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 353
    .local v4, "cv":Landroid/content/ContentValues;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 354
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 355
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 356
    .local v8, "obj":Ljava/lang/Object;
    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_1

    .line 357
    move-object v9, v8

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 358
    :cond_1
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 359
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 360
    :cond_2
    instance-of v9, v8, Ljava/lang/Long;

    if-eqz v9, :cond_3

    .line 361
    move-object v9, v8

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 363
    :cond_3
    iget-object v9, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sendStoredLog: ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "] has wrong data type!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, p1, v10}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 365
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "obj":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 367
    :cond_4
    invoke-static {v4}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 368
    iget-object v5, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendStoredLog: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] is null or empty"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 369
    monitor-exit v1

    return v2

    .line 373
    :cond_5
    const-string v5, "DRPT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eqz v5, :cond_9

    .line 374
    const-string v5, "VLTS"

    .line 375
    iget-object v8, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v8

    if-nez v8, :cond_6

    move v8, v7

    goto :goto_2

    :cond_6
    move v8, v2

    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 374
    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    const-string v5, "VILS"

    .line 377
    iget-object v8, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVideoCallType(Landroid/content/Context;II)I

    move-result v6

    if-nez v6, :cond_7

    move v6, v7

    goto :goto_3

    :cond_7
    move v6, v2

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 376
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 378
    const-string v5, "VWES"

    iget-object v6, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_8

    move v2, v7

    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    const-string v2, "VWPS"

    iget-object v5, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->getPrefMode(Landroid/content/Context;II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 382
    const-string v2, "next_drpt_schedule"

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_5

    .line 383
    :cond_9
    const-string v5, "DRCS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 384
    invoke-direct {p0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->isSmsAppDefault()Z

    move-result v5

    .line 385
    .local v5, "isSecMessageInUse":Z
    const-string v8, "CMAS"

    if-eqz v5, :cond_a

    goto :goto_4

    :cond_a
    move v2, v7

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    if-nez v5, :cond_b

    .line 387
    iget-object v2, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "smsPkg":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 389
    const-string v8, "CMDA"

    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .end local v2    # "smsPkg":Ljava/lang/String;
    :cond_b
    const-string v2, "RUSS"

    iget-object v8, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    .end local v5    # "isSecMessageInUse":Z
    :cond_c
    :goto_5
    sget-object v2, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendStoredLog: send logs of ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, p1, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 396
    invoke-direct {p0, p1, v0, v4}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->sendLogs(ILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 398
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 399
    .end local v3    # "logStorage":Landroid/content/SharedPreferences;
    .end local v4    # "cv":Landroid/content/ContentValues;
    monitor-exit v1

    .line 401
    return v7

    .line 399
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private storeLogs(ILjava/lang/String;Landroid/content/ContentValues;I)Z
    .locals 17
    .param p1, "phoneId"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "cv"    # Landroid/content/ContentValues;
    .param p4, "overWrite"    # I

    .line 405
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->getFeatureLock(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 406
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Landroid/content/ContentValues;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, v1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "storeLogs: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] is null or empty"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 408
    monitor-exit v4

    return v5

    .line 411
    :cond_0
    iget-object v0, v1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    move/from16 v6, p1

    invoke-static {v6, v0, v2, v5, v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    move-object v7, v0

    .line 412
    .local v7, "logStorage":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move-object v8, v0

    .line 414
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v0

    .line 415
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v12, p3

    :try_start_1
    invoke-virtual {v12, v11}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    .line 416
    .local v13, "obj":Ljava/lang/Object;
    if-nez v13, :cond_1

    .line 417
    iget-object v0, v1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "storeLogs: ["

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "] is null!"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 418
    goto :goto_0

    .line 422
    :cond_1
    :try_start_2
    instance-of v0, v13, Ljava/lang/Integer;

    const/4 v14, 0x2

    if-eqz v0, :cond_4

    .line 423
    move-object v0, v13

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 424
    .local v0, "numToSet":I
    invoke-interface {v7, v11, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 426
    .local v15, "storedVal":I
    if-ne v3, v10, :cond_2

    .line 427
    add-int/2addr v0, v15

    goto :goto_1

    .line 428
    :cond_2
    if-ne v3, v14, :cond_3

    if-gt v0, v15, :cond_3

    .line 429
    move v0, v15

    .line 432
    :cond_3
    :goto_1
    invoke-interface {v8, v11, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 433
    nop

    .end local v0    # "numToSet":I
    .end local v15    # "storedVal":I
    goto :goto_3

    :cond_4
    instance-of v0, v13, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 434
    move-object v0, v13

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 435
    .local v15, "numToSet":J
    const-wide/16 v5, 0x0

    invoke-interface {v7, v11, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 437
    .local v5, "storedVal":J
    if-ne v3, v10, :cond_5

    .line 438
    add-long/2addr v15, v5

    move-wide v14, v15

    goto :goto_2

    .line 439
    :cond_5
    if-ne v3, v14, :cond_6

    cmp-long v0, v15, v5

    if-gtz v0, :cond_6

    .line 440
    move-wide v15, v5

    move-wide v14, v15

    goto :goto_2

    .line 443
    :cond_6
    move-wide v14, v15

    .end local v15    # "numToSet":J
    .local v14, "numToSet":J
    :goto_2
    invoke-interface {v8, v11, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 444
    nop

    .end local v5    # "storedVal":J
    .end local v14    # "numToSet":J
    goto :goto_3

    :cond_7
    instance-of v0, v13, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 445
    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    invoke-interface {v8, v11, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 447
    :cond_8
    iget-object v0, v1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storeLogs: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] has wrong data type!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 451
    :goto_3
    goto :goto_4

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/ClassCastException;
    :try_start_3
    iget-object v5, v1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "storeLogs: ClassCastException! key: ["

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]!"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 453
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "obj":Ljava/lang/Object;
    :goto_4
    move/from16 v6, p1

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 455
    :cond_9
    move-object/from16 v12, p3

    sget-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storeLogs: feature ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 457
    .end local v7    # "logStorage":Landroid/content/SharedPreferences;
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    monitor-exit v4

    .line 459
    return v10

    .line 457
    :catchall_0
    move-exception v0

    move-object/from16 v12, p3

    :goto_5
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 199
    const-string v0, "logAndAdd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 204
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selecArgs"    # [Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 209
    new-instance v0, Lcom/sec/internal/log/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/sec/internal/log/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 210
    .local v0, "pw":Lcom/sec/internal/log/IndentingPrintWriter;
    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump(Lcom/sec/internal/log/IndentingPrintWriter;)V

    .line 211
    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .line 158
    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    .line 163
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 164
    .local v0, "phoneId":I
    const-string v1, "feature"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "feature":Ljava/lang/String;
    const-string/jumbo v3, "send_mode"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 166
    .local v4, "sendMode":Ljava/lang/Integer;
    const-string/jumbo v5, "overwrite_mode"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 167
    .local v6, "overWriteMode":Ljava/lang/Integer;
    if-nez v6, :cond_1

    .line 168
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 172
    :cond_1
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 176
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 179
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v2, p2, v1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->storeLogs(ILjava/lang/String;Landroid/content/ContentValues;I)Z

    goto :goto_1

    .line 177
    :cond_3
    :goto_0
    invoke-direct {p0, v0, v2, p2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->sendLogs(ILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 182
    :cond_4
    :goto_1
    return-object p1

    .line 159
    .end local v0    # "phoneId":I
    .end local v2    # "feature":Ljava/lang/String;
    .end local v4    # "sendMode":Ljava/lang/Integer;
    .end local v6    # "overWriteMode":Ljava/lang/Integer;
    :cond_5
    :goto_2
    sget-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    const-string v1, "insert: parameter Uri or ContentValues has unexpected null value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 4

    .line 90
    invoke-virtual {p0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    .line 91
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 93
    invoke-direct {p0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->scheduleDailyReport()V

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.BIG_DATA_INFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "com.sec.imsservice.ACTION_DAILY_REPORT_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/diagnosis/ImsLogAgent$1;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent$1;-><init>(Lcom/sec/internal/ims/diagnosis/ImsLogAgent;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selecArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method protected sendLogToHqmManager(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "custom_dataset"    # Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    const-string v1, "HqmManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    .line 334
    .local v0, "hqm":Landroid/os/SemHqmManager;
    if-nez v0, :cond_0

    .line 335
    const/4 v1, 0x0

    return v1

    .line 337
    :cond_0
    const/4 v2, 0x0

    const-string v3, "Telephony"

    const-string/jumbo v5, "sm"

    const-string v6, "0.0"

    const-string/jumbo v7, "sec"

    const-string v8, ""

    const-string v10, ""

    move-object v1, v0

    move-object v4, p1

    move-object v9, p2

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cv"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selecArgs"    # [Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "rtn":I
    sget-object v1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 148
    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update: Invalid uri ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_1

    .line 134
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "feature":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v2

    .line 137
    .local v2, "phoneId":I
    const-string v3, "DRPT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 138
    const-string v3, "DRCS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->sendStoredLog(ILjava/lang/String;)I

    move-result v0

    .line 145
    goto :goto_1

    .line 139
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->onDailyReport()V

    .line 140
    const/4 v0, 0x1

    .line 152
    .end local v1    # "feature":Ljava/lang/String;
    .end local v2    # "phoneId":I
    :goto_1
    return v0
.end method
