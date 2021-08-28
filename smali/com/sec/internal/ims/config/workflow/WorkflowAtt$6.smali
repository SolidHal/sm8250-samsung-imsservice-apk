.class Lcom/sec/internal/ims/config/workflow/WorkflowAtt$6;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;
.source "WorkflowAtt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    .line 267
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

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

    .line 282
    .local p1, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->parseParamForAtt(Ljava/util/Map;)V

    .line 283
    return-void
.end method

.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 270
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    const-string v2, "Parse:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 273
    :try_start_0
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0
    :try_end_0
    .catch Lcom/sec/internal/ims/config/exception/UnknownStatusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    nop

    .line 277
    return-object v0

    .line 274
    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Lcom/sec/internal/ims/config/exception/UnknownStatusException;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    return-object v1
.end method
