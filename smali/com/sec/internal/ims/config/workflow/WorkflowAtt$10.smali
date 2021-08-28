.class Lcom/sec/internal/ims/config/workflow/WorkflowAtt$10;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Finish;
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

    .line 334
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$10;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$10;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getVersion()I

    move-result v0

    .line 338
    .local v0, "currentVersion":I
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$10;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finish: currentVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$10;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$10;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->setLastErrorCode(I)V

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$10;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->createSharedInfo()V

    .line 344
    if-gtz v0, :cond_1

    .line 345
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$10;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-static {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->access$500(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$10;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    sget-object v2, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_SW_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->setLastSwVersion(Ljava/lang/String;)V

    .line 350
    const/4 v1, 0x0

    return-object v1
.end method
