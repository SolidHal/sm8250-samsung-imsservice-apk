.class public Lcom/sec/internal/ims/entitlement/softphone/VSimClient$DefaultState;
.super Lcom/sec/internal/helper/State;
.source "VSimClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/softphone/VSimClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/VSimClient;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/VSimClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/softphone/VSimClient;

    .line 30
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient$DefaultState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/VSimClient;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient$DefaultState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/VSimClient;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->access$000(Lcom/sec/internal/ims/entitlement/softphone/VSimClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient$DefaultState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/VSimClient;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 39
    const/4 v0, 0x1

    .line 40
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    .line 43
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient$DefaultState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/VSimClient;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->access$000(Lcom/sec/internal/ims/entitlement/softphone/VSimClient;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient$DefaultState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/VSimClient;

    .line 44
    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    .line 49
    return v0
.end method
