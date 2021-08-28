.class public Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;
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
    name = "FetchHttp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    .line 133
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpDefault()V

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1ff

    if-ne v0, v1, :cond_0

    .line 139
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Finish;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;Lcom/sec/internal/ims/config/workflow/WorkflowRjil$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->handleResponse2(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0
.end method
