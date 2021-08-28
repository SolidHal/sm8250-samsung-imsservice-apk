.class public abstract Lcom/sec/internal/ims/core/handler/RegistrationHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "RegistrationHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 9
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    .line 10
    return-void
.end method
