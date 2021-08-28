.class public final synthetic Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$BbJ8Df9F1TSwVDj6usETUtogd1s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$BbJ8Df9F1TSwVDj6usETUtogd1s;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$BbJ8Df9F1TSwVDj6usETUtogd1s;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$BbJ8Df9F1TSwVDj6usETUtogd1s;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$BbJ8Df9F1TSwVDj6usETUtogd1s;->f$1:I

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    invoke-static {v0, v1, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$isServiceAvailable$7(Ljava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Z

    move-result p1

    return p1
.end method
