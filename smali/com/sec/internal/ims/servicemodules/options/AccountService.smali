.class public Lcom/sec/internal/ims/servicemodules/options/AccountService;
.super Landroid/app/Service;
.source "AccountService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/options/AccountService$Authenticator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAuthenticator:Lcom/sec/internal/ims/servicemodules/options/AccountService$Authenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/sec/internal/ims/servicemodules/options/AccountService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/AccountService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 31
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/AccountService;->mAuthenticator:Lcom/sec/internal/ims/servicemodules/options/AccountService$Authenticator;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/AccountService$Authenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 20
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/AccountService;->TAG:Ljava/lang/String;

    const-string v1, "Service created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/AccountService$Authenticator;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/options/AccountService$Authenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/AccountService;->mAuthenticator:Lcom/sec/internal/ims/servicemodules/options/AccountService$Authenticator;

    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 26
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/AccountService;->TAG:Ljava/lang/String;

    const-string v1, "Service destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method
