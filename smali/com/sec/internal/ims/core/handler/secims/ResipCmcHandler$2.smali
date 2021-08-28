.class Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$2;
.super Ljava/lang/Object;
.source "ResipCmcHandler.java"

# interfaces
.implements Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    .line 127
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->access$1500(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sve connected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->access$1202(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;Z)Z

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->access$1302(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;Z)Z

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->sendEmptyMessage(I)Z

    .line 144
    return-void
.end method

.method public onDisconnected()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->access$1100(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sve disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->access$1202(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;Z)Z

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->access$1302(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;Z)Z

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->access$1400(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    const/16 v1, 0x12c

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 136
    :cond_0
    return-void
.end method
