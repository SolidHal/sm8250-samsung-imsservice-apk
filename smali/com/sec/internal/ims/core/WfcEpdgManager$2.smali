.class Lcom/sec/internal/ims/core/WfcEpdgManager$2;
.super Ljava/lang/Object;
.source "WfcEpdgManager.java"

# interfaces
.implements Lcom/sec/epdg/EpdgManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/WfcEpdgManager;->makeEpdgConnection()Lcom/sec/epdg/EpdgManager$ConnectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 276
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$2;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .line 279
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bind EpdgService success."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$2;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->sendMessage(I)V

    .line 281
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$2;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$700(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$2;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$600(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager$EpdgListener;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sec/epdg/EpdgManager;->addListenerBySim(Lcom/sec/epdg/EpdgManager$EpdgListener;I)V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    .end local v0    # "phoneId":I
    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 4

    .line 288
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unbind EpdgService success."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$2;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$800(Lcom/sec/internal/ims/core/WfcEpdgManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;

    .line 290
    .local v1, "listener":Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;
    invoke-interface {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;->onEpdgServiceDisconnected()V

    .line 291
    .end local v1    # "listener":Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;
    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$2;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/16 v1, 0x9

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/WfcEpdgManager;->sendMessageDelayed(IJ)V

    .line 294
    return-void
.end method
