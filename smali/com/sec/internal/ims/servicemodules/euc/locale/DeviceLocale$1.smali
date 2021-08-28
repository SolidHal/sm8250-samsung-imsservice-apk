.class Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$1;
.super Ljava/lang/Object;
.source "DeviceLocale.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->start(Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$IDeviceLocaleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;

    .line 64
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->access$000(Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;)Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$IDeviceLocaleListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$IDeviceLocaleListener;->onLocaleChanged(Ljava/util/Locale;)V

    .line 68
    return-void
.end method
