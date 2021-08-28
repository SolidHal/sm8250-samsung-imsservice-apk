.class Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;
.super Ljava/lang/Object;
.source "WorkflowPrimaryDevice.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Initialize"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;

    .line 185
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->clearCookie()V

    .line 192
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mStartForce:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 193
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->setToken(Ljava/lang/String;)V

    .line 194
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V

    move-object v0, v1

    goto :goto_0

    .line 196
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$2;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ordinal()I

    move-result v4

    aget v1, v1, v4

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

    .line 205
    :cond_1
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V

    move-object v0, v1

    goto :goto_0

    .line 200
    :cond_2
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V

    move-object v0, v1

    .line 201
    nop

    .line 210
    :goto_0
    instance-of v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;

    if-eqz v1, :cond_3

    .line 211
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mMobileNetwork:Z

    if-nez v1, :cond_3

    .line 212
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-static {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->access$000(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "now use wifi. try non-ps step directly."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V

    move-object v0, v1

    .line 217
    :cond_3
    return-object v0
.end method
