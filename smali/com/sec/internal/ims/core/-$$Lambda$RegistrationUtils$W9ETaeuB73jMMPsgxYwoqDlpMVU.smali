.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$RegistrationUtils$W9ETaeuB73jMMPsgxYwoqDlpMVU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/interfaces/ims/core/IRegisterTask;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationUtils$W9ETaeuB73jMMPsgxYwoqDlpMVU;->f$0:Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationUtils$W9ETaeuB73jMMPsgxYwoqDlpMVU;->f$0:Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    check-cast p1, Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->lambda$updateImsIcon$0(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/ImsIconManager;)V

    return-void
.end method
