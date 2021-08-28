.class Lcom/sec/internal/ims/aec/util/ValidityTimer$1;
.super Landroid/content/BroadcastReceiver;
.source "ValidityTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/aec/util/ValidityTimer;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/util/ValidityTimer;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/aec/util/ValidityTimer;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/aec/util/ValidityTimer;

    .line 28
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->this$0:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    iput-object p2, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7f113bfb

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x71d3f846

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "com.sec.imsservice.aec.action.VERSION_VALIDITY_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "com.sec.imsservice.aec.action.TOKEN_VALIDITY_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-ne v0, v3, :cond_3

    .line 38
    invoke-static {}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->this$0:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->access$100(Lcom/sec/internal/ims/aec/util/ValidityTimer;)I

    move-result v1

    const-string/jumbo v2, "token validity timer is expired"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->this$0:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopTokenValidityTimer()V

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->val$handler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 41
    goto :goto_2

    .line 43
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->this$0:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->access$100(Lcom/sec/internal/ims/aec/util/ValidityTimer;)I

    move-result v1

    const-string/jumbo v2, "version validity timer is expired"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->this$0:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopVersionValidityTimer()V

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->val$handler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 36
    nop

    .line 45
    :goto_2
    return-void
.end method
