.class public Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;
.super Ljava/lang/Object;
.source "IdentityLoginClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/loginclient/IdentityLoginClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdenResultData"
.end annotation


# instance fields
.field public final imei:Ljava/lang/String;

.field public final imsi:Ljava/lang/String;

.field public final mdn:Ljava/lang/String;

.field public final signature:Ljava/lang/String;

.field public final signatureCreateTime:J

.field public final signatureExpireTime:J

.field public final subscriptionId:I

.field public final tid:J

.field public final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Integer;JLjava/lang/String;)V
    .locals 1
    .param p1, "imei"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "mdn"    # Ljava/lang/String;
    .param p4, "sig"    # Ljava/lang/String;
    .param p5, "sigCreate"    # J
    .param p7, "sigExpire"    # J
    .param p9, "subId"    # Ljava/lang/Integer;
    .param p10, "tid"    # J
    .param p12, "token"    # Ljava/lang/String;

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-object p1, p0, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;->imei:Ljava/lang/String;

    .line 729
    iput-object p2, p0, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;->imsi:Ljava/lang/String;

    .line 730
    iput-object p3, p0, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;->mdn:Ljava/lang/String;

    .line 731
    iput-object p4, p0, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;->signature:Ljava/lang/String;

    .line 732
    iput-wide p5, p0, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;->signatureCreateTime:J

    .line 733
    iput-wide p7, p0, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;->signatureExpireTime:J

    .line 734
    invoke-virtual {p9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;->subscriptionId:I

    .line 735
    iput-wide p10, p0, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;->tid:J

    .line 736
    iput-object p12, p0, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;->token:Ljava/lang/String;

    .line 737
    return-void
.end method
