.class Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;
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
    name = "FetchHttp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowUp;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;

    .line 277
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

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

    .line 280
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpDefault()V

    .line 281
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 282
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1ff

    const/4 v2, 0x0

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 283
    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v3, v4, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v4, v5, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->handleResponseForUp(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0

    .line 284
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 285
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mIsheaderEnrichment:Z

    .line 287
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    return-object v0
.end method
