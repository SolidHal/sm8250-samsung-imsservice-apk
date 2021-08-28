.class public interface abstract Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;
.super Ljava/lang/Object;
.source "IHttpAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    }
.end annotation


# static fields
.field public static final IS_ENGG_BIN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->IS_ENGG_BIN:Z

    return-void
.end method


# virtual methods
.method public abstract close()Z
.end method

.method public abstract getNetwork()Landroid/net/Network;
.end method

.method public abstract open(Ljava/lang/String;)Z
.end method

.method public abstract request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract setHeaders(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract setMethod(Ljava/lang/String;)V
.end method

.method public abstract setNetwork(Landroid/net/Network;)V
.end method

.method public abstract setParams(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
