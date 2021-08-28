.class Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;
.super Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;
.source "WorkflowTS43.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseConfiguration;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$WaitingEapChallengeResp;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$CalcEapChallenge;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final MAX_TRY_COUNT:I

.field private mTryCnt:I

.field private mTryCntNoAnswer:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "moduleHandler"    # Landroid/os/Handler;

    .line 30
    const-class v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->LOG_TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->MAX_TRY_COUNT:I

    .line 26
    iput v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCntNoAnswer:I

    .line 31
    return-void
.end method

.method static synthetic access$1302(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;
    .param p1, "x1"    # I

    .line 22
    iput p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCntNoAnswer:I

    return p1
.end method

.method static synthetic access$702(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;
    .param p1, "x1"    # I

    .line 22
    iput p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    return p1
.end method

.method static synthetic access$710(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    .line 22
    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    return v0
.end method


# virtual methods
.method doWorkflow()V
    .locals 10

    .line 35
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    .line 36
    .local v0, "next":Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$Workflow;
    :goto_0
    if-eqz v0, :cond_2

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    if-ltz v2, :cond_2

    .line 38
    const-string v3, "doWorkflow: "

    if-nez v2, :cond_0

    .line 39
    :try_start_0
    new-instance v2, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;

    invoke-direct {v2, p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    move-object v0, v2

    .line 41
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$Workflow;->run()Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$Workflow;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_1

    .line 52
    :catch_0
    move-exception v2

    .line 53
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;

    invoke-direct {v4, p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    move-object v0, v4

    .line 54
    iget-object v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mPhoneId:I

    invoke-static {v4, v3, v5}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 42
    :catch_1
    move-exception v2

    .line 43
    .local v2, "e":Ljava/io/IOException;
    iget v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 44
    new-instance v4, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;

    invoke-direct {v4, p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    move-object v0, v4

    goto :goto_2

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->clearAkaToken()V

    .line 47
    iget-object v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    const-string v6, ""

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/aec/util/HttpStore;->setEapChallengeResp(Ljava/lang/String;)V

    .line 48
    iget-object v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    const-wide/16 v6, 0x7d0

    iget v8, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    sub-int/2addr v8, v5

    iput v8, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    rsub-int/lit8 v5, v8, 0x3

    int-to-long v8, v5

    mul-long/2addr v8, v6

    invoke-virtual {v4, v8, v9}, Lcom/sec/internal/ims/aec/util/PowerController;->sleep(J)V

    .line 49
    new-instance v4, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;

    invoke-direct {v4, p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    move-object v0, v4

    .line 51
    :goto_2
    iget-object v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mPhoneId:I

    invoke-static {v4, v3, v5}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 57
    :cond_2
    return-void
.end method

.method handleNotOkResponse(I)Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$Workflow;
    .locals 10
    .param p1, "responseCode"    # I

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNotOkResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mPhoneId:I

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    .line 65
    .local v0, "next":Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$Workflow;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->setValidEntitlement(Z)V

    .line 67
    if-eqz p1, :cond_5

    const/16 v3, 0x190

    if-eq p1, v3, :cond_4

    const/16 v3, 0x19f

    if-eq p1, v3, :cond_4

    const/16 v3, 0x1f4

    if-eq p1, v3, :cond_4

    const/16 v3, 0x1f7

    if-eq p1, v3, :cond_1

    const/16 v2, 0x1ff

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 70
    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->clearAkaToken()V

    .line 71
    new-instance v2, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;

    invoke-direct {v2, p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    move-object v0, v2

    .line 72
    goto/16 :goto_1

    .line 87
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v3}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getHeader()Ljava/util/Map;

    move-result-object v3

    const-string v4, "Retry-After"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 88
    .local v3, "ra":Ljava/lang/String;
    const-string v4, "[0-9]+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    .local v4, "raTime":J
    goto :goto_0

    .line 92
    .end local v4    # "raTime":J
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v4}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getHeader()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Date"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 93
    .local v2, "date":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "EEE, dd MMM yyyy HH:mm:ss ZZZZ"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 94
    .local v4, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 95
    .local v5, "cal":Ljava/util/Calendar;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 96
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 97
    .local v6, "raTime":J
    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 98
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    move-wide v4, v6

    .line 100
    .end local v2    # "date":Ljava/lang/String;
    .end local v5    # "cal":Ljava/util/Calendar;
    .end local v6    # "raTime":J
    .local v4, "raTime":J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gtz v2, :cond_3

    .line 101
    const-wide/16 v4, 0xa

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry-After: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " sec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mPhoneId:I

    invoke-static {v2, v6, v7}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Lcom/sec/internal/ims/aec/util/PowerController;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v3    # "ra":Ljava/lang/String;
    goto :goto_1

    .line 105
    .end local v4    # "raTime":J
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Retry-After Header: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mPhoneId:I

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    new-instance v3, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;

    invoke-direct {v3, p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    move-object v0, v3

    .line 108
    goto :goto_1

    .line 79
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->clearAkaToken()V

    .line 80
    new-instance v2, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;

    invoke-direct {v2, p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    move-object v0, v2

    .line 81
    goto :goto_1

    .line 113
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->clearAkaToken()V

    .line 114
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/aec/util/HttpStore;->setEapChallengeResp(Ljava/lang/String;)V

    .line 115
    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCntNoAnswer:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_6

    .line 116
    add-int/2addr v2, v4

    iput v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCntNoAnswer:I

    goto :goto_1

    .line 118
    :cond_6
    iput v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCntNoAnswer:I

    .line 119
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v3}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpUrls()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpUrl(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 121
    new-instance v2, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;

    invoke-direct {v2, p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    move-object v0, v2

    .line 127
    :cond_7
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x193
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
