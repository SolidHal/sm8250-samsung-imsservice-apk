.class public Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Parse;
.super Ljava/lang/Object;
.source "WorkflowTmo.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowTmo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Parse"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    .line 181
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 184
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    const-string v2, "Parse:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mXmlParser:Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParams:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 186
    .local v0, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 188
    const-string/jumbo v1, "root/vers/version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    const-string/jumbo v1, "root/vers/validity"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->moveHttpParam(Ljava/util/Map;)V

    .line 196
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParams:Ljava/lang/String;

    const-string v2, "info/raw_config_xml_file"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setParsedXml(Ljava/util/Map;)V

    .line 199
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Store;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;)V

    return-object v1

    .line 190
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string v2, "config xml must contain at least 2 items(version & validity)."

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_1
    new-instance v1, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string v2, "no parsed xml data."

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
