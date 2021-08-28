.class Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$2;
.super Landroid/database/ContentObserver;
.source "DeviceConfigAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 191
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$2;->this$0:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 194
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri changed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$2;->this$0:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->parseDeviceConfig()V

    .line 199
    :cond_0
    return-void
.end method
