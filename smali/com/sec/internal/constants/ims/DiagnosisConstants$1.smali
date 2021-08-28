.class Lcom/sec/internal/constants/ims/DiagnosisConstants$1;
.super Ljava/util/ArrayList;
.source "DiagnosisConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/DiagnosisConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    const-string v0, "RGS4"

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$1;->add(Ljava/lang/Object;)Z

    .line 134
    const-string v0, "RGSL"

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$1;->add(Ljava/lang/Object;)Z

    .line 135
    const-string v0, "RGSW"

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$1;->add(Ljava/lang/Object;)Z

    .line 137
    const-string v0, "RGF4"

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$1;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v0, "RGFL"

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$1;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v0, "RGFW"

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$1;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v0, "RRS4"

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$1;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v0, "RRSL"

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$1;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v0, "RRSW"

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$1;->add(Ljava/lang/Object;)Z

    .line 145
    const-string v0, "RRF4"

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$1;->add(Ljava/lang/Object;)Z

    .line 146
    const-string v0, "RRFL"

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$1;->add(Ljava/lang/Object;)Z

    .line 147
    const-string v0, "RRFW"

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$1;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method
