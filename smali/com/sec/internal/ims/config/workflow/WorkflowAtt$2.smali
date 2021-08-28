.class Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "WorkflowAtt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowAtt;
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

    .line 107
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 2
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # Lcom/sec/ims/ImsRegistrationError;

    .line 127
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistered()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 4
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 110
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    const-string v2, "onRegistered()"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->access$000(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->access$002(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;Z)Z

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->access$102(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->access$100(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string v2, "MSISDN is registered."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "IMS registered, start autoconfig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->addEventLog(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->sendEmptyMessage(I)Z

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->access$200(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V

    .line 123
    :cond_1
    return-void
.end method
