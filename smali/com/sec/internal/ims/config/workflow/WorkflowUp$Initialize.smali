.class Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;
.super Ljava/lang/Object;
.source "WorkflowUp.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Initialize"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowUp;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;

    .line 245
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->clearCookie()V

    .line 251
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mStartForce:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 252
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    move-object v0, v1

    goto :goto_0

    .line 254
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 263
    :cond_1
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    move-object v0, v1

    goto :goto_0

    .line 258
    :cond_2
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    move-object v0, v1

    .line 259
    nop

    .line 267
    :goto_0
    instance-of v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;

    if-eqz v1, :cond_3

    .line 268
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMobileNetwork:Z

    if-nez v1, :cond_3

    .line 269
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string v3, "mMobileNetwork: false, try FetchHttps step"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    move-object v0, v1

    .line 273
    :cond_3
    return-object v0
.end method
