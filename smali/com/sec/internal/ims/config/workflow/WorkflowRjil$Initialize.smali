.class public Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;
.super Ljava/lang/Object;
.source "WorkflowRjil.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowRjil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Initialize"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    .line 98
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->clearCookie()V

    .line 105
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mStartForce:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 106
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    move-object v0, v1

    goto :goto_0

    .line 108
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$1;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Finish;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;Lcom/sec/internal/ims/config/workflow/WorkflowRjil$1;)V

    move-object v0, v1

    goto :goto_0

    .line 112
    :cond_2
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    move-object v0, v1

    .line 113
    nop

    .line 122
    :goto_0
    instance-of v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;

    if-eqz v1, :cond_3

    .line 123
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mMobileNetwork:Z

    if-nez v1, :cond_3

    .line 124
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "now use wifi. try non-ps step directly."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    move-object v0, v1

    .line 129
    :cond_3
    return-object v0
.end method
