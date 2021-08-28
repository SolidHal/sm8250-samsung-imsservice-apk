.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerHandler$2O9AyOcadu7BnFsj2pd-NujDuh4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/sec/internal/constants/Mno;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;ILcom/sec/internal/constants/Mno;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerHandler$2O9AyOcadu7BnFsj2pd-NujDuh4;->f$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iput p2, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerHandler$2O9AyOcadu7BnFsj2pd-NujDuh4;->f$1:I

    iput-object p3, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerHandler$2O9AyOcadu7BnFsj2pd-NujDuh4;->f$2:Lcom/sec/internal/constants/Mno;

    iput p4, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerHandler$2O9AyOcadu7BnFsj2pd-NujDuh4;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerHandler$2O9AyOcadu7BnFsj2pd-NujDuh4;->f$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerHandler$2O9AyOcadu7BnFsj2pd-NujDuh4;->f$1:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerHandler$2O9AyOcadu7BnFsj2pd-NujDuh4;->f$2:Lcom/sec/internal/constants/Mno;

    iget v3, p0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerHandler$2O9AyOcadu7BnFsj2pd-NujDuh4;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$notifySendDeRegisterRequested$1$RegistrationManagerHandler(ILcom/sec/internal/constants/Mno;I)V

    return-void
.end method
