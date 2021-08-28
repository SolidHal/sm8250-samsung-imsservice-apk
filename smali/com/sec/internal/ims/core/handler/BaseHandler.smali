.class public abstract Lcom/sec/internal/ims/core/handler/BaseHandler;
.super Landroid/os/Handler;
.source "BaseHandler.java"


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 22
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .line 29
    return-void
.end method
