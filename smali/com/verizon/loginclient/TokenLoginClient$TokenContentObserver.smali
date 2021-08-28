.class Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;
.super Landroid/database/ContentObserver;
.source "TokenLoginClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/loginclient/TokenLoginClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TokenContentObserver"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/verizon/loginclient/TokenLoginClient;


# direct methods
.method constructor <init>(Lcom/verizon/loginclient/TokenLoginClient;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/verizon/loginclient/TokenLoginClient;
    .param p2, "hndlr"    # Landroid/os/Handler;

    .line 680
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;->this$0:Lcom/verizon/loginclient/TokenLoginClient;

    .line 681
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 682
    iput-object p2, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;->mHandler:Landroid/os/Handler;

    .line 683
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 687
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;->this$0:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-static {v0}, Lcom/verizon/loginclient/TokenLoginClient;->access$1000(Lcom/verizon/loginclient/TokenLoginClient;)V

    .line 690
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 691
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 692
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 694
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
