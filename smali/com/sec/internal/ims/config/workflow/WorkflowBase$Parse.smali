.class public abstract Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;
.super Ljava/lang/Object;
.source "WorkflowBase.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "Parse"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    .line 275
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseParam(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 287
    .local p1, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->parseParam(Ljava/util/Map;)V

    .line 288
    return-void
.end method

.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getParsedXmlFromBody()Ljava/util/Map;

    move-result-object v0

    .line 279
    .local v0, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isRequiredAuthentication(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    return-object v1

    .line 282
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;->parseParam(Ljava/util/Map;)V

    .line 283
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setParsedXml(Ljava/util/Map;)V

    .line 284
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    return-object v1
.end method
