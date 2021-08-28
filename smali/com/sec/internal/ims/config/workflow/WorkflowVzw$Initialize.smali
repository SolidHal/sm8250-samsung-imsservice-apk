.class Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;
.super Ljava/lang/Object;
.source "WorkflowVzw.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowVzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Initialize"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzw;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;

    .line 870
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

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

    .line 873
    const/4 v0, 0x0

    .line 874
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    const/4 v2, 0x0

    iput v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttpResponse:I

    .line 875
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 876
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->clearCookie()V

    .line 877
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStartForce:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 878
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V

    move-object v0, v1

    goto :goto_0

    .line 880
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$2;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    .line 890
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V

    move-object v0, v1

    goto :goto_0

    .line 884
    :cond_1
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V

    move-object v0, v1

    .line 885
    nop

    .line 894
    :goto_0
    return-object v0
.end method
