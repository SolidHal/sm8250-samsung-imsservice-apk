.class public final synthetic Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$OptionsModule$ciF1fQnzbXVrabQFjW_CJjrl-sQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$IOptionsEventListener;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/OptionsModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$OptionsModule$ciF1fQnzbXVrabQFjW_CJjrl-sQ;->f$0:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    return-void
.end method


# virtual methods
.method public final onCapabilityUpdate(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$OptionsModule$ciF1fQnzbXVrabQFjW_CJjrl-sQ;->f$0:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->lambda$init$0$OptionsModule(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V

    return-void
.end method
