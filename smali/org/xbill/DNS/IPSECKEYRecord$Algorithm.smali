.class public Lorg/xbill/DNS/IPSECKEYRecord$Algorithm;
.super Ljava/lang/Object;
.source "IPSECKEYRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/IPSECKEYRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Algorithm"
.end annotation


# static fields
.field public static final DSA:I = 0x1

.field public static final RSA:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
