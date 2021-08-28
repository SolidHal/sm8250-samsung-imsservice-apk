.class Lcom/sec/internal/ims/config/workflow/WorkflowAtt$11;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowAtt;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 440
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$11;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .line 443
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$11;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    const-string v2, "onChange: Airplane Mode Observer"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$11;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 446
    .local v0, "airPlaneModeOn":I
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$11;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Airplane Mode On: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 447
    if-nez v0, :cond_0

    .line 448
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$11;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mModuleHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$11;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    const/16 v3, 0x11

    iget v4, v2, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 450
    :cond_0
    return-void
.end method
