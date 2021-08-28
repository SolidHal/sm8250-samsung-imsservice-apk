.class public final synthetic Lcom/sec/internal/ims/servicemodules/euc/-$$Lambda$EucModule$JdmazOoJW931QLpJFIUqq5Kqtwk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$IDeviceLocaleListener;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/euc/EucModule;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/EucModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/-$$Lambda$EucModule$JdmazOoJW931QLpJFIUqq5Kqtwk;->f$0:Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    return-void
.end method


# virtual methods
.method public final onLocaleChanged(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/-$$Lambda$EucModule$JdmazOoJW931QLpJFIUqq5Kqtwk;->f$0:Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->lambda$performStartupRegistrations$2$EucModule(Ljava/util/Locale;)V

    return-void
.end method
