<?php

namespace App\Entity;

use App\Repository\EventRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=EventRepository::class)
 */
class Event
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $title;

    /**
     * @ORM\Column(type="text")
     */
    private $contents;

    /**
     * @ORM\Column(type="datetime")
     */
    private $dateEvents;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $categoriesEvents;

    /**
     * @ORM\Column(type="integer")
     */
    private $memberPlayers;

    /**
     * @ORM\Column(type="integer")
     */
    private $xpEvents;

    /**
     * @ORM\Column(type="integer")
     */
    private $userId;

    /**
     * @ORM\Column(type="datetime")
     */
    private $createdAt;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): self
    {
        $this->title = $title;

        return $this;
    }

    public function getContents(): ?string
    {
        return $this->contents;
    }

    public function setContents(string $contents): self
    {
        $this->contents = $contents;

        return $this;
    }

    public function getDateEvents(): ?\DateTimeInterface
    {
        return $this->dateEvents;
    }

    public function setDateEvents(\DateTimeInterface $dateEvents): self
    {
        $this->dateEvents = $dateEvents;

        return $this;
    }

    public function getCategoriesEvents(): ?string
    {
        return $this->categoriesEvents;
    }

    public function setCategoriesEvents(string $categoriesEvents): self
    {
        $this->categoriesEvents = $categoriesEvents;

        return $this;
    }

    public function getMemberPlayers(): ?int
    {
        return $this->memberPlayers;
    }

    public function setMemberPlayers(int $memberPlayers): self
    {
        $this->memberPlayers = $memberPlayers;

        return $this;
    }

    public function getXpEvents(): ?int
    {
        return $this->xpEvents;
    }

    public function setXpEvents(int $xpEvents): self
    {
        $this->xpEvents = $xpEvents;

        return $this;
    }

    public function getUserId(): ?int
    {
        return $this->userId;
    }

    public function setUserId(int $userId): self
    {
        $this->userId = $userId;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->createdAt;
    }

    public function setCreatedAt(\DateTimeInterface $createdAt): self
    {
        $this->createdAt = $createdAt;

        return $this;
    }
}
