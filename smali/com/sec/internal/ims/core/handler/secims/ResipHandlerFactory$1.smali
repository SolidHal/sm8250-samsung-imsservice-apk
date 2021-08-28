.class Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory$1;
.super Lcom/sec/internal/ims/core/handler/VolteHandler;
.source "ResipHandlerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 50
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/VolteHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method
