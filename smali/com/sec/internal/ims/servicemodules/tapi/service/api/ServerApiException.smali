.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
.super Landroid/os/RemoteException;
.source "ServerApiException.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 42
    return-void
.end method
