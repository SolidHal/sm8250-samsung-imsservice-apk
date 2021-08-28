.class public interface abstract Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;
.super Ljava/lang/Object;
.source "ISignallingNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
    }
.end annotation


# static fields
.field public static final ACTION_SIP_MESSAGE:Ljava/lang/String; = "com.sec.imsservice.sip.signalling"

.field public static final DEBUG:Z

.field public static final ENG:Z

.field public static final PERMISSION:Ljava/lang/String; = "com.sec.imsservice.sip.signalling.READ_PERMISSION"

.field public static final SHIPBUILD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 7
    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v1, "user"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;->ENG:Z

    .line 8
    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;->DEBUG:Z

    .line 9
    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;->SHIPBUILD:Z

    return-void
.end method


# virtual methods
.method public abstract send(Ljava/lang/Object;)Z
.end method
