.class Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$2;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;
.source "WorkflowLocalFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    .line 111
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

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

    .line 116
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->getMatchedSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "salesCode":Ljava/lang/String;
    goto :goto_0

    .line 120
    .end local v0    # "salesCode":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->mMno:Lcom/sec/internal/constants/Mno;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->getMatchedSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .restart local v0    # "salesCode":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "salesCode from mno = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->mRcsProfile:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_up"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getXml()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->parseJson(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 129
    .local v1, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    .line 132
    const-string/jumbo v2, "root/vers/version"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "root/vers/validity"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 135
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->parseParamForLocalFile(Ljava/util/Map;)V

    .line 136
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setParsedXml(Ljava/util/Map;)V

    .line 137
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v2

    return-object v2

    .line 133
    :cond_2
    new-instance v2, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string v3, "config xml must contain atleast 2 items(version & validity)."

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_3
    new-instance v2, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string v3, "no parsed xml data."

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
