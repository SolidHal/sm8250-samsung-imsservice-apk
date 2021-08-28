.class Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;
.super Landroid/os/Handler;
.source "IdentityLoginClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/loginclient/IdentityLoginClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdentityMsgHandler"
.end annotation


# instance fields
.field private final mParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/verizon/loginclient/IdentityLoginClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/verizon/loginclient/IdentityLoginClient;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "parent"    # Lcom/verizon/loginclient/IdentityLoginClient;

    .line 652
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 653
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;->mParent:Ljava/lang/ref/WeakReference;

    .line 654
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 659
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;->mParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/loginclient/IdentityLoginClient;

    .line 662
    .local v0, "parent":Lcom/verizon/loginclient/IdentityLoginClient;
    if-nez v0, :cond_0

    return-void

    .line 664
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 665
    invoke-static {v0}, Lcom/verizon/loginclient/IdentityLoginClient;->access$500(Lcom/verizon/loginclient/IdentityLoginClient;)V

    .line 666
    invoke-static {v0}, Lcom/verizon/loginclient/IdentityLoginClient;->access$600(Lcom/verizon/loginclient/IdentityLoginClient;)Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/verizon/loginclient/IdentityLoginClient;->access$700(Lcom/verizon/loginclient/IdentityLoginClient;Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;Z)Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/verizon/loginclient/IdentityLoginClient;->access$200(Lcom/verizon/loginclient/IdentityLoginClient;Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;)V

    .line 669
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 670
    invoke-static {v0}, Lcom/verizon/loginclient/IdentityLoginClient;->access$800(Lcom/verizon/loginclient/IdentityLoginClient;)V

    .line 671
    new-instance v1, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    sget-object v2, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->timeout:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3, v3}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;-><init>(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;Ljava/lang/Throwable;Lcom/verizon/loginclient/IdentityLoginClient$1;)V

    invoke-static {v0, v1}, Lcom/verizon/loginclient/IdentityLoginClient;->access$200(Lcom/verizon/loginclient/IdentityLoginClient;Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;)V

    .line 673
    :cond_2
    return-void
.end method
