.class public Lcom/sec/internal/ims/aec/receiver/fcm/FcmInstanceIdService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "FcmInstanceIdService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmInstanceIdService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmInstanceIdService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 4

    .line 15
    sget-object v0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmInstanceIdService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onTokenRefresh"

    invoke-static {v0, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflowFactory()Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    move-result-object v0

    .line 17
    .local v0, "workflowFactory":Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;
    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getAllWorkflow()Landroid/util/SparseArray;

    move-result-object v1

    .line 19
    .local v1, "workflowArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 20
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    .line 21
    .local v3, "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    if-eqz v3, :cond_0

    .line 22
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->refreshFcmToken()V

    .line 19
    .end local v3    # "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    .end local v1    # "workflowArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;>;"
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
