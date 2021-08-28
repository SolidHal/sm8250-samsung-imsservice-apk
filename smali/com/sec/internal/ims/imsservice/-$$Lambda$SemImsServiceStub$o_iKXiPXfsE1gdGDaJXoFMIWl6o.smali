.class public final synthetic Lcom/sec/internal/ims/imsservice/-$$Lambda$SemImsServiceStub$o_iKXiPXfsE1gdGDaJXoFMIWl6o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/ims/SemImsRegistration$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/ims/SemImsRegistration$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/-$$Lambda$SemImsServiceStub$o_iKXiPXfsE1gdGDaJXoFMIWl6o;->f$0:Lcom/samsung/android/ims/SemImsRegistration$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/-$$Lambda$SemImsServiceStub$o_iKXiPXfsE1gdGDaJXoFMIWl6o;->f$0:Lcom/samsung/android/ims/SemImsRegistration$Builder;

    check-cast p1, Lcom/sec/ims/util/ImsUri;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->lambda$buildSemImsRegistration$0(Lcom/samsung/android/ims/SemImsRegistration$Builder;Lcom/sec/ims/util/ImsUri;)V

    return-void
.end method
