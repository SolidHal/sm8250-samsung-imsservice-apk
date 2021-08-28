.class Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$2;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;
.source "WorkflowLocalFilefromSDcard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    .line 50
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

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

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->mXmlParser:Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getXml()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 54
    .local v0, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 57
    const-string/jumbo v1, "root/vers/version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "root/vers/validity"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->parseParamForLocalFile(Ljava/util/Map;)V

    .line 61
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->moveHttpParam(Ljava/util/Map;)V

    .line 62
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setParsedXml(Ljava/util/Map;)V

    .line 63
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    return-object v1

    .line 58
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string v2, "config xml must contain atleast 2 items(version & validity)."

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_1
    new-instance v1, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string v2, "no parsed xml data."

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
