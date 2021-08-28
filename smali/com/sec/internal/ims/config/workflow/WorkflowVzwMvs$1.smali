.class Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "WorkflowVzwMvs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    .line 128
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 2
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # Lcom/sec/ims/ImsRegistrationError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->onImsRegistrationStatusChanged(Z)V

    .line 137
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 2
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->onImsRegistrationStatusChanged(Z)V

    .line 132
    return-void
.end method
