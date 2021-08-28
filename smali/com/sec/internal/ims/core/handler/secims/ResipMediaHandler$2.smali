.class Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;
.super Ljava/lang/Object;
.source "ResipMediaHandler.java"

# interfaces
.implements Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 309
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1900(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sve connected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1702(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;Z)Z

    .line 322
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1802(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;Z)Z

    .line 323
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->sendEmptyMessage(I)Z

    .line 324
    return-void
.end method

.method public onDisconnected()V
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1600(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sve disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1702(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;Z)Z

    .line 314
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1802(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;Z)Z

    .line 315
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    const/16 v1, 0x12c

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 316
    return-void
.end method
