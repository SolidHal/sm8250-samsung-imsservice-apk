.class public Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;
.super Ljava/lang/Object;
.source "WorkflowFactory.java"


# static fields
.field private static mWorkflowArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

.field private static mWorkflowThreads:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowArray:Landroid/util/SparseArray;

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public static declared-synchronized createWorkflowFactory(Landroid/content/Context;)Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    .line 33
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 29
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getWorkflowFactory()Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;
    .locals 2

    const-class v0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized newInstance(Ljava/lang/String;Landroid/os/HandlerThread;Landroid/os/Handler;)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    .locals 4
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "handlerThread"    # Landroid/os/HandlerThread;
    .param p3, "handler"    # Landroid/os/Handler;

    monitor-enter p0

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    :try_start_0
    const-string/jumbo v1, "ts43"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    new-instance v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3, p3}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 41
    .end local p0    # "this":Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 36
    .end local v0    # "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    .end local p1    # "server":Ljava/lang/String;
    .end local p2    # "handlerThread":Landroid/os/HandlerThread;
    .end local p3    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized clearWorkflow(I)V
    .locals 2
    .param p1, "phoneId"    # I

    monitor-enter p0

    .line 72
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 73
    sget-object v0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    .line 74
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    if-eqz v0, :cond_0

    .line 75
    sget-object v1, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 76
    sget-object v1, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local p0    # "this":Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;
    :cond_0
    monitor-exit p0

    return-void

    .line 71
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    .end local p1    # "phoneId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createWorkflow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "mno"    # Ljava/lang/String;
    .param p4, "server"    # Ljava/lang/String;
    .param p5, "handler"    # Landroid/os/Handler;

    monitor-enter p0

    .line 45
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Workflow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 48
    invoke-direct {p0, p4, v0, p5}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->newInstance(Ljava/lang/String;Landroid/os/HandlerThread;Landroid/os/Handler;)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v1

    .line 49
    .local v1, "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    if-nez v1, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 53
    .end local p0    # "this":Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;
    :cond_0
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 54
    sget-object v2, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 55
    sget-object v2, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 57
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 58
    invoke-interface {v1, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->initWorkflow(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 44
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    .end local v1    # "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    .end local p1    # "phoneId":I
    .end local p2    # "imsi":Ljava/lang/String;
    .end local p3    # "mno":Ljava/lang/String;
    .end local p4    # "server":Ljava/lang/String;
    .end local p5    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAllWorkflow()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 68
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowArray:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 68
    .end local p0    # "this":Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    .locals 1
    .param p1, "phoneId"    # I

    monitor-enter p0

    .line 64
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 64
    .end local p0    # "this":Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;
    .end local p1    # "phoneId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
