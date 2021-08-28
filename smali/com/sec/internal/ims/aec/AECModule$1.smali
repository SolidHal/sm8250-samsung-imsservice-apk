.class Lcom/sec/internal/ims/aec/AECModule$1;
.super Landroid/telephony/PhoneStateListener;
.source "AECModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/aec/AECModule;->registerListenerForDataRoamingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/AECModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/aec/AECModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/aec/AECModule;

    .line 264
    iput-object p1, p0, Lcom/sec/internal/ims/aec/AECModule$1;->this$0:Lcom/sec/internal/ims/aec/AECModule;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .line 267
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule$1;->this$0:Lcom/sec/internal/ims/aec/AECModule;

    invoke-static {v0}, Lcom/sec/internal/ims/aec/AECModule;->access$000(Lcom/sec/internal/ims/aec/AECModule;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule$1;->this$0:Lcom/sec/internal/ims/aec/AECModule;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/aec/AECModule;->access$100(Lcom/sec/internal/ims/aec/AECModule;Landroid/telephony/ServiceState;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 268
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule$1;->this$0:Lcom/sec/internal/ims/aec/AECModule;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/aec/AECModule;->access$100(Lcom/sec/internal/ims/aec/AECModule;Landroid/telephony/ServiceState;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/aec/AECModule;->access$002(Lcom/sec/internal/ims/aec/AECModule;Z)Z

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule$1;->this$0:Lcom/sec/internal/ims/aec/AECModule;

    invoke-static {v0}, Lcom/sec/internal/ims/aec/AECModule;->access$200(Lcom/sec/internal/ims/aec/AECModule;)Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getAllWorkflow()Landroid/util/SparseArray;

    move-result-object v0

    .line 270
    .local v0, "workflowArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 271
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    .line 272
    .local v2, "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    if-eqz v2, :cond_0

    .line 273
    iget-object v3, p0, Lcom/sec/internal/ims/aec/AECModule$1;->this$0:Lcom/sec/internal/ims/aec/AECModule;

    invoke-static {v3}, Lcom/sec/internal/ims/aec/AECModule;->access$000(Lcom/sec/internal/ims/aec/AECModule;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setPsDataRoaming(Z)V

    .line 270
    .end local v2    # "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v0    # "workflowArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;>;"
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
