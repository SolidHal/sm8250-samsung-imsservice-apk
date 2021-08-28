.class Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Initialize;
.super Ljava/lang/Object;
.source "WorkflowVzwMvs.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Initialize"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)V
    .locals 0

    .line 976
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;

    .line 976
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 979
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mHttpResponse:I

    .line 980
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 981
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->clearCookie()V

    .line 982
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchToken;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchToken;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    return-object v0
.end method
