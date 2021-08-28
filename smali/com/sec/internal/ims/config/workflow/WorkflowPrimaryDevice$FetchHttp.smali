.class Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;
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
    name = "FetchHttp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;

    .line 221
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpDefault()V

    .line 225
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 226
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1ff

    const/4 v2, 0x0

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 227
    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v3, v4, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V

    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v4, v5, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->handleResponse2(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0

    .line 228
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mIsheaderEnrichment:Z

    .line 231
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V

    return-object v0
.end method
