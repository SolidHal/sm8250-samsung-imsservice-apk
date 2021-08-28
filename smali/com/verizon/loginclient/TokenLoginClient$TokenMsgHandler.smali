.class Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;
.super Landroid/os/Handler;
.source "TokenLoginClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/loginclient/TokenLoginClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TokenMsgHandler"
.end annotation


# instance fields
.field private final mParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/verizon/loginclient/TokenLoginClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Looper;Lcom/verizon/loginclient/TokenLoginClient;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "parent"    # Lcom/verizon/loginclient/TokenLoginClient;

    .line 650
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 651
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;->mParent:Ljava/lang/ref/WeakReference;

    .line 652
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;
    .param p2, "x1"    # Lcom/verizon/loginclient/TokenLoginClient;
    .param p3, "x2"    # Lcom/verizon/loginclient/TokenLoginClient$1;

    .line 646
    invoke-direct {p0, p1, p2}, Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;-><init>(Landroid/os/Looper;Lcom/verizon/loginclient/TokenLoginClient;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 657
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;->mParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/loginclient/TokenLoginClient;

    .line 660
    .local v0, "parent":Lcom/verizon/loginclient/TokenLoginClient;
    if-nez v0, :cond_0

    return-void

    .line 662
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 663
    invoke-static {v0}, Lcom/verizon/loginclient/TokenLoginClient;->access$700(Lcom/verizon/loginclient/TokenLoginClient;)V

    .line 664
    invoke-static {v0}, Lcom/verizon/loginclient/TokenLoginClient;->access$800(Lcom/verizon/loginclient/TokenLoginClient;)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/verizon/loginclient/TokenLoginClient;->access$900(Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;Z)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/verizon/loginclient/TokenLoginClient;->access$300(Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;)V

    .line 667
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 668
    invoke-static {v0}, Lcom/verizon/loginclient/TokenLoginClient;->access$1000(Lcom/verizon/loginclient/TokenLoginClient;)V

    .line 669
    new-instance v1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object v2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->timeout:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3, v3}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    invoke-static {v0, v1}, Lcom/verizon/loginclient/TokenLoginClient;->access$300(Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;)V

    .line 671
    :cond_2
    return-void
.end method
