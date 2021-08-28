.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$NtpTimeController$yItxDfj_9s-MpQbD6jIbNfkw1BM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/NtpTimeController;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/NtpTimeController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/-$$Lambda$NtpTimeController$yItxDfj_9s-MpQbD6jIbNfkw1BM;->f$0:Lcom/sec/internal/ims/core/NtpTimeController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/core/-$$Lambda$NtpTimeController$yItxDfj_9s-MpQbD6jIbNfkw1BM;->f$0:Lcom/sec/internal/ims/core/NtpTimeController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/NtpTimeController;->lambda$requestNtpTime$0$NtpTimeController()V

    return-void
.end method
