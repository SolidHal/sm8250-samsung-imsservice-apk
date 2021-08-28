.class public final synthetic Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$OptionsRequestController$5sVnsjfjGxdxS-qefzS2l2374is;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

.field public final synthetic f$1:Lcom/sec/ims/ImsRegistration;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$OptionsRequestController$5sVnsjfjGxdxS-qefzS2l2374is;->f$0:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$OptionsRequestController$5sVnsjfjGxdxS-qefzS2l2374is;->f$1:Lcom/sec/ims/ImsRegistration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$OptionsRequestController$5sVnsjfjGxdxS-qefzS2l2374is;->f$0:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$OptionsRequestController$5sVnsjfjGxdxS-qefzS2l2374is;->f$1:Lcom/sec/ims/ImsRegistration;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->lambda$setImsRegistration$0$OptionsRequestController(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method
