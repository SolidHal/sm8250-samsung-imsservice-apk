.class Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler$1;
.super Ljava/lang/Object;
.source "ResipVshHandler.java"

# interfaces
.implements Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;

    .line 103
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .line 111
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sve connected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .line 107
    return-void
.end method
