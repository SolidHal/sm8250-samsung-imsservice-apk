.class Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppTokenFor511Response;
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
    name = "ReFetchAppTokenFor511Response"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)V
    .locals 0

    .line 1045
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppTokenFor511Response;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;

    .line 1045
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppTokenFor511Response;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)V

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

    .line 1048
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppTokenFor511Response;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "ReFetchAppTokenFor511Response: apptoken is needed"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppTokenFor511Response;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 1050
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppTokenFor511Response;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppTokenFor511Response;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->m511ResponseRetryCount:I

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getAppToken(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->access$500(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Ljava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppTokenFor511Response;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 1052
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$AuthorizeAppToken;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppTokenFor511Response;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$AuthorizeAppToken;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    return-object v0
.end method
