.class public Lcom/sec/internal/helper/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/StateMachine$SmHandler;,
        Lcom/sec/internal/helper/StateMachine$LogRecords;,
        Lcom/sec/internal/helper/StateMachine$LogRec;
    }
.end annotation


# static fields
.field public static final HANDLED:Z = true

.field public static final NOT_HANDLED:Z = false

.field private static final SM_INIT_CMD:I = -0x2

.field private static final SM_QUIT_CMD:I = -0x1


# instance fields
.field private mName:Ljava/lang/String;

.field private mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

.field private mSmThread:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1248
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1249
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1239
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1240
    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/helper/StateMachine;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/helper/StateMachine;

    .line 417
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/internal/helper/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/helper/StateMachine;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .line 417
    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$502(Lcom/sec/internal/helper/StateMachine;Lcom/sec/internal/helper/StateMachine$SmHandler;)Lcom/sec/internal/helper/StateMachine$SmHandler;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/helper/StateMachine;
    .param p1, "x1"    # Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 417
    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    return-object p1
.end method

.method private initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1229
    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine;->mName:Ljava/lang/String;

    .line 1230
    new-instance v0, Lcom/sec/internal/helper/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/helper/StateMachine;Lcom/sec/internal/helper/StateMachine$1;)V

    iput-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1231
    return-void
.end method


# virtual methods
.method protected final addState(Lcom/sec/internal/helper/State;)V
    .locals 2
    .param p1, "state"    # Lcom/sec/internal/helper/State;

    .line 1284
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->access$800(Lcom/sec/internal/helper/StateMachine$SmHandler;Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 1285
    return-void
.end method

.method protected final addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V
    .locals 1
    .param p1, "state"    # Lcom/sec/internal/helper/State;
    .param p2, "parent"    # Lcom/sec/internal/helper/State;

    .line 1275
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Lcom/sec/internal/helper/StateMachine$SmHandler;->access$800(Lcom/sec/internal/helper/StateMachine$SmHandler;Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 1276
    return-void
.end method

.method public final deferMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 1335
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->access$1200(Lcom/sec/internal/helper/StateMachine$SmHandler;Landroid/os/Message;)V

    .line 1336
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " total records="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getLogRecCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1837
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getLogRecSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1838
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->getLogRec(I)Lcom/sec/internal/helper/StateMachine$LogRec;

    move-result-object v1

    .line 1840
    .local v1, "rec":Lcom/sec/internal/helper/StateMachine$LogRec;
    const-string v2, "NULL"

    .line 1841
    .local v2, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1842
    invoke-virtual {v1}, Lcom/sec/internal/helper/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1845
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " rec["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1846
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1837
    .end local v1    # "rec":Lcom/sec/internal/helper/StateMachine$LogRec;
    .end local v2    # "value":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1850
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    .line 1851
    .local v0, "state":Lcom/sec/internal/helper/IState;
    if-eqz v0, :cond_2

    .line 1852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1854
    :cond_2
    return-void
.end method

.method public final getCurrentState()Lcom/sec/internal/helper/IState;
    .locals 2

    .line 1302
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1303
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 1304
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->access$1000(Lcom/sec/internal/helper/StateMachine$SmHandler;)Lcom/sec/internal/helper/IState;

    move-result-object v1

    return-object v1
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .line 1437
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    return-object v0
.end method

.method public final getLogRec(I)Lcom/sec/internal/helper/StateMachine$LogRec;
    .locals 2
    .param p1, "index"    # I

    .line 1403
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1404
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 1405
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->access$1400(Lcom/sec/internal/helper/StateMachine$SmHandler;)Lcom/sec/internal/helper/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/StateMachine$LogRecords;->get(I)Lcom/sec/internal/helper/StateMachine$LogRec;

    move-result-object v1

    return-object v1
.end method

.method public final getLogRecCount()I
    .locals 2

    .line 1393
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1394
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1395
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->access$1400(Lcom/sec/internal/helper/StateMachine$SmHandler;)Lcom/sec/internal/helper/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/helper/StateMachine$LogRecords;->count()I

    move-result v1

    return v1
.end method

.method public final getLogRecSize()I
    .locals 2

    .line 1383
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1384
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1385
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->access$1400(Lcom/sec/internal/helper/StateMachine$SmHandler;)Lcom/sec/internal/helper/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/helper/StateMachine$LogRecords;->size()I

    move-result v1

    return v1
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 1423
    const-string v0, ""

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1375
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .line 1430
    const/4 v0, 0x0

    return-object v0
.end method

.method protected haltedProcessMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 1352
    return-void
.end method

.method public final hasMessages(I)Z
    .locals 2
    .param p1, "what"    # I

    .line 1819
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1820
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1822
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->hasMessages(I)Z

    move-result v1

    return v1
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1872
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1890
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    return-void
.end method

.method public logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1881
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    return-void
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I

    .line 1452
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(II)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 1487
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 1505
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1524
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1469
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected onHalting()V
    .locals 0

    .line 1360
    return-void
.end method

.method protected onPostHandleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 1266
    return-void
.end method

.method protected onPreHandleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 1257
    return-void
.end method

.method protected onQuitting()V
    .locals 0

    .line 1369
    return-void
.end method

.method public final quit()V
    .locals 1

    .line 1796
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1797
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1799
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->access$1500(Lcom/sec/internal/helper/StateMachine$SmHandler;)V

    .line 1800
    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 1412
    const/4 v0, 0x1

    return v0
.end method

.method public final removeMessages(I)V
    .locals 1
    .param p1, "what"    # I

    .line 1774
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1775
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1777
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->removeMessages(I)V

    .line 1778
    return-void
.end method

.method public final removeMessages(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 1785
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1786
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1788
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/helper/StateMachine$SmHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1789
    return-void

    .line 1786
    :cond_1
    :goto_0
    return-void
.end method

.method public final sendMessage(I)V
    .locals 2
    .param p1, "what"    # I

    .line 1534
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1535
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1537
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1538
    return-void
.end method

.method public final sendMessage(II)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 1560
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1561
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1563
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1564
    return-void
.end method

.method public final sendMessage(III)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 1573
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1574
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1576
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1577
    return-void
.end method

.method public final sendMessage(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1586
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1587
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1589
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1590
    return-void
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1547
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1548
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1550
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1551
    return-void
.end method

.method public final sendMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 1599
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1600
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1602
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1603
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(I)V
    .locals 2
    .param p1, "what"    # I

    .line 1692
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1693
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1695
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1696
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(II)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 1720
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1721
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1723
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1724
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(III)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 1735
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1736
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1738
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1739
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1749
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1750
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1752
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1753
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1706
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1707
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1709
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1710
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 1763
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1764
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1766
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1767
    return-void
.end method

.method public final sendMessageDelayed(IIIJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "delayMillis"    # J

    .line 1651
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1652
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1654
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1655
    return-void
.end method

.method public final sendMessageDelayed(IIILjava/lang/Object;J)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "delayMillis"    # J

    .line 1665
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1666
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1668
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p5, p6}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1669
    return-void
.end method

.method public final sendMessageDelayed(IIJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "delayMillis"    # J

    .line 1638
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1639
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1641
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1642
    return-void
.end method

.method public final sendMessageDelayed(IJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    .line 1612
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1613
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1615
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1616
    return-void
.end method

.method public final sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "delayMillis"    # J

    .line 1625
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1626
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1628
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1629
    return-void
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delayMillis"    # J

    .line 1678
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1679
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1681
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1682
    return-void
.end method

.method protected final setInitialState(Lcom/sec/internal/helper/State;)V
    .locals 1
    .param p1, "initialState"    # Lcom/sec/internal/helper/State;

    .line 1294
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->access$900(Lcom/sec/internal/helper/StateMachine$SmHandler;Lcom/sec/internal/helper/State;)V

    .line 1295
    return-void
.end method

.method public start()V
    .locals 1

    .line 1807
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 1808
    .local v0, "smh":Lcom/sec/internal/helper/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1811
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->access$1600(Lcom/sec/internal/helper/StateMachine$SmHandler;)V

    .line 1812
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1858
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1859
    .local v0, "sr":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1860
    .local v1, "pr":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v2}, Lcom/sec/internal/helper/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1861
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1862
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 1863
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final transitionTo(Lcom/sec/internal/helper/IState;)V
    .locals 1
    .param p1, "destState"    # Lcom/sec/internal/helper/IState;

    .line 1322
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->access$1100(Lcom/sec/internal/helper/StateMachine$SmHandler;Lcom/sec/internal/helper/IState;)V

    .line 1323
    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1344
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->access$1300(Lcom/sec/internal/helper/StateMachine$SmHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - unhandledMessage: msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    .line 1345
    :cond_0
    return-void
.end method
