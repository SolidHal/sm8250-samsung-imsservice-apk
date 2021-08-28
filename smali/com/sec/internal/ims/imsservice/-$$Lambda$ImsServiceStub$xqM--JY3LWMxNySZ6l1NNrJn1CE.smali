.class public final synthetic Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$xqM--JY3LWMxNySZ6l1NNrJn1CE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$xqM--JY3LWMxNySZ6l1NNrJn1CE;->f$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$xqM--JY3LWMxNySZ6l1NNrJn1CE;->f$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-virtual {v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$linkToPhoneDeath$9$ImsServiceStub()V

    return-void
.end method
