.class Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;
.super Ljava/lang/Object;
.source "CapabilityStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SequenceUpdater"
.end annotation


# instance fields
.field operationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

.field timeout:Z


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 922
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->timeout:Z

    .line 923
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$1;

    .line 921
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)V

    return-void
.end method


# virtual methods
.method tryApplybatch()V
    .locals 6

    .line 933
    const-string v0, ", size = "

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->timeout:Z

    if-eqz v1, :cond_1

    .line 934
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->access$100(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryApplybatch: try size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapabilityStorage"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 935
    const v1, 0x12040003

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "N,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 937
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->access$200(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 938
    .local v1, "authority":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tryApplybatch: authority = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->access$300(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    nop

    .end local v1    # "authority":Ljava/lang/String;
    goto/16 :goto_1

    .line 947
    :catch_0
    move-exception v1

    .line 948
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 949
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->access$400(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException in tryApplybatch userId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->access$200(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 950
    const v0, 0x12040001

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->access$200(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_1

    .line 943
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 944
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 945
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->access$400(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecurityException in tryApplybatch userId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->access$200(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 946
    const/high16 v0, 0x12040000

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->access$200(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .end local v1    # "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 940
    :catch_2
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 951
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 952
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 953
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->timeout:Z

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 956
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater$1;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 967
    :cond_2
    return-void
.end method

.method tryPut(Landroid/content/ContentProviderOperation;)V
    .locals 2
    .param p1, "op"    # Landroid/content/ContentProviderOperation;

    .line 926
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 927
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->tryApplybatch()V

    .line 930
    return-void

    .line 928
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
