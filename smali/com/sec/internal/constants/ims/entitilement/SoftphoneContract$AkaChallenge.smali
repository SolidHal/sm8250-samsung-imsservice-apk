.class public final Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$AkaChallenge;
.super Ljava/lang/Object;
.source "SoftphoneContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AkaChallenge"
.end annotation


# static fields
.field public static final ACTION_AKA_CHALLENGE_COMPLETE:Ljava/lang/String; = "com.sec.imsservice.AKA_CHALLENGE_COMPLETE"

.field public static final ACTION_AKA_CHALLENGE_FAILED:Ljava/lang/String; = "com.sec.imsservice.AKA_CHALLENGE_FAILED"

.field public static final ACTION_REQUEST_AKA_CHALLENGE:Ljava/lang/String; = "com.sec.imsservice.REQUEST_AKA_CHALLENGE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
