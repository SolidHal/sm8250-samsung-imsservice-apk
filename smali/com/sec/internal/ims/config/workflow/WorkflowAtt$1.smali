.class Lcom/sec/internal/ims/config/workflow/WorkflowAtt$1;
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

    .line 97
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "RCS user switch is toggled, start autoconfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->addEventLog(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isMainSwitchToggled:Z

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->sendEmptyMessage(I)Z

    .line 103
    return-void
.end method
