.class Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$3;
.super Ljava/lang/Object;
.source "DeviceLocale.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;

.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;Ljava/util/Locale;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;

    .line 109
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$3;->this$0:Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$3;->val$locale:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$3;->this$0:Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->access$000(Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;)Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$IDeviceLocaleListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$3;->val$locale:Ljava/util/Locale;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$IDeviceLocaleListener;->onLocaleChanged(Ljava/util/Locale;)V

    .line 113
    return-void
.end method
